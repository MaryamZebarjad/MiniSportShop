from django.views.generic import ListView
from django.shortcuts import render,redirect,get_object_or_404
from django.contrib import messages
from apps.products.models import Product,Category,Comment,Rating
from django.contrib.auth.decorators import login_required
from .forms import CommentForm,RatingForm
from django.core.paginator import Paginator
################################################################################## 
# تابع برای نمایش محصول با شماره ای دی ارسال شده از طریق پارامتر ورودی
################################################################################## 
def show_product(request,PK):
    
    #  واکشی محصول با شماره ای دی مورد نظر که از طریق پارامتر ورودی ارسال شده است
    product=Product.objects.get(id=PK)
    
    # افزودن تعداد بازدیدهای محصول
    product.view_number+=1
    
    # ذخیره تعداد بازدیدهای محصول در دیتابیس
    product.save()
    
    # واکشی نظرات فعال برای محصول با شماره ای دی مورد نظر
    comments=Comment.objects.filter(product_id=PK,is_active=True)
    
    # صفحه بندی نظرات بصورت 3 تایی
    paginator=Paginator(comments,3)  
    page_number=request.GET.get('page')
    comments=paginator.get_page(page_number)
    
    # امتیاز ثبت شده برای محصول توسط کاربر لاگین شده
    if request.user.is_authenticated:
        user_rating = Rating.objects.filter(product=product,user=request.user).first()
    else:
        user_rating = None
    # ارسال اطلاعات مربوط به محصول - نظرات - امتیاز - تعداد نظرات  به سمت تمپلیت
    context={
        'product':product,
        'comments':comments,
        'comment_count': product.comment_count(),
        'user_rating':user_rating,
    }
    return render(request,'products/product.html',context)
################################################################################## 
def category_summary(request):
    all_category=Category.objects.all()
    return render(request,'products/category_summary.html',{"categories":all_category})
################################################################################## 
def show_category(request,CAT):
    CAT=CAT.replace("-"," ")
    try:
        category=Category.objects.get(name=CAT)
        products=Product.objects.filter(category=category,is_active=True).order_by('-stock')
        context={
            'category':category,
            'products':products
        }
        return render(request,'products/category.html',context)
    except:
        messages.error(request,"(دسته بندی وجود ندارد)")
        return redirect('main:index')
################################################################################## 
def categories_processor(request):
    categories = Category.objects.all()
    return {'categories': categories}
################################################################################## 
class show_sale(ListView):
    model = Product
    template_name = 'products/sale.html'
    context_object_name = 'products'
    paginate_by = 4

    def get_queryset(self):
        return Product.objects.filter(is_sale=True,is_active=True).order_by('-stock')
################################################################################## 
class show_stock(ListView):
    model=Product
    template_name='products/stock.html'
    context_object_name='products'
    paginate_by=4
    
    def get_queryset(self):
        return Product.objects.filter(is_active=True,stock=0)
################################################################################## 
def about(request):
    return render(request,'main/about.html')
################################################################################## 

################################################################################## 
@login_required
def add_comment(request,PK):
    product=Product.objects.get(id=PK)
    if Comment.objects.filter(product=product,user=request.user).exists():
        messages.error(request,"کاربر گرامی " +str(request.user)+" شما قبلا نظر ثبت کرده اید ","warning")
        return redirect('products:product',PK=product.id)
    if request.method=='POST':
        form=CommentForm(request.POST)
        if form.is_valid():
            comment=form.save(commit=False)
            comment.product=product
            comment.user=request.user
            comment.save()
            messages.success(request," کاربر گرامی " +str(request.user)+"  با تشکر نظر شما پس از بررسی نمایش داده می شود ","success" )
            return redirect('products:product',PK=product.id)
    else:
        form = CommentForm()
    return render(request,'products/add_comment.html',{'form':form,'product':product})
################################################################################## 

################################################################################## 
@login_required
def add_rating(request,PK):
    product=Product.objects.get(id=PK)
    if Rating.objects.filter(product=product,user=request.user).exists():
        messages.error(request,"کاربر گرامی " +str(request.user)+" شما قبلا امتیاز ثبت کرده اید ","warning")
        return redirect('products:product',PK=product.id)
    if request.method=='POST':
        form = RatingForm(request.POST)
        if form.is_valid():
            rating,created=Rating.objects.update_or_create(
                user=request.user,
                product=product,
                defaults={'score':form.cleaned_data['score']}
            )
            messages.success(request,"کاربر گرامی " +str(request.user)+" امتیاز شما ثبت شد ","success")
            return redirect('products:product',PK=product.id)
    else:
        form = RatingForm()
    return render(request,'products/product.html',{'form':form,'product':product})
################################################################################## 