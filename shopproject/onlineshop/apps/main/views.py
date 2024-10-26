from django.shortcuts import redirect, render
from apps.products.models import Product
from apps.main.models import Message
from django.conf import settings
from django.views.generic.list import ListView
from .forms import MessageForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.views import View
################################################################################## 
def media_admin(request):
    return {'media_url':settings.MEDIA_URL,}
################################################################################## 
class ProductList(ListView):
    model = Product
    template_name = 'main/index.html'
    context_object_name = 'products'
    paginate_by = 4

    def get_queryset(self):
        return Product.objects.filter(is_active=True).order_by('-stock')
################################################################################## 
def about(request):
    return render(request,'main/about.html')
################################################################################## 
class ContactView(View):
    template_name="main/contact.html"
    
    def get(self,request,*args,**kwargs): 
        form=MessageForm()
        return render(request,self.template_name,{"form":form})
    
    def post(self,request,*args,**kwargs): 
        form=MessageForm(request.POST)
        if form.is_valid():
            cd=form.cleaned_data
            msg=Message()
            msg.full_name=cd['full_name']
            msg.email=cd['email']
            msg.subject=cd['subject']
            msg.message=cd['message']
            msg.save()
            messages.success(request,"پیام شما ارسال شد","success")
            return redirect("main:index")
        else:
            messages.error(request,"ارسال پیام با خطا مواجه شد","danger") 
            return render(request,self.template_name,{"form":form}) 
################################################################################## 