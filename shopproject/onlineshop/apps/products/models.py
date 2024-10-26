from django.db import models
from django.core.validators import MinValueValidator,MaxValueValidator
from django.contrib.auth.models import User
from utils import FileUpload
 
# مدل دسته بندی
class Category(models.Model):
    name = models.CharField(max_length=100,verbose_name='نام دسته بندی')

    class Meta:
        verbose_name='دسته بندی'
        verbose_name_plural="دسته بندی ها"
        
    def __str__(self):
        return self.name
    
    
def UploadProductImage(instance,filename):
    return f"images/product/{filename}"  

# مدل برند
class Brand(models.Model):
    name = models.CharField(max_length=100,verbose_name='نام برند')
    
    class Meta:
        verbose_name='برند'
        verbose_name_plural="برندها"
    
    def __str__(self):
        return self.name  
    
# مدل محصول
class Product(models.Model):
    name=models.CharField(max_length=255,verbose_name='نام محصول')
    brand=models.ForeignKey(Brand,on_delete=models.CASCADE,default=1,verbose_name='مارک',blank=True,null=True)
    description = models.TextField(default='',blank=True,null=True,verbose_name='توضیحات محصول')
    price=models.DecimalField(default=0,max_digits=10,decimal_places=0,verbose_name='قیمت محصول')
    category=models.ForeignKey(Category,on_delete=models.CASCADE,default=1,verbose_name='دسته بندی محصول')
    file_upload=FileUpload('images','product')
    image=models.ImageField(upload_to=file_upload.upload_to,verbose_name='تصویر محصول')
    stock=models.IntegerField(default=0,verbose_name='موجودی محصول')
    is_sale=models.BooleanField(default=False,verbose_name='تخفیف')
    sale_price=models.DecimalField(default=0,max_digits=10, decimal_places=0,verbose_name='قیمت تخفیف خورده محصول')
    star=models.IntegerField(default=0,validators=[MaxValueValidator(5),MinValueValidator(0)],verbose_name='امتیاز')
    view_number=models.IntegerField(default=0,verbose_name="تعداد بازدید")
    is_active=models.BooleanField(default=False,verbose_name='وضعیت محصول')
    
    def comment_count(self):
        return self.comments.count()
    
    class Meta:
        verbose_name='محصول'
        verbose_name_plural="محصولات"
        
    def __str__(self):
        return self.name
    
    
def UploadProductImageGallary(instance,filename):
        return f"images/product/gallary/{instance.product.id}/{filename}" 
# مدل گالری تصاویر محصول        
class ProductImageGallary(models.Model):
    product=models.ForeignKey(Product,on_delete=models.CASCADE,verbose_name='محصول',related_name='productGallary') 
    image=models.ImageField(upload_to=UploadProductImageGallary,verbose_name='تصویر')

    class Meta:
        verbose_name = 'تصویر'
        verbose_name_plural='تصاویر'


    
# مدل نقد و بررسی
class Comment(models.Model):
    product = models.ForeignKey(Product, related_name='comments', on_delete=models.CASCADE,verbose_name='محصول مورد نقد و بررسی')
    user = models.ForeignKey(User, on_delete=models.CASCADE,verbose_name='کاربر نقد کننده')
    text = models.TextField(verbose_name='متن نقد و بررسی')
    number=models.IntegerField(default=0,verbose_name='تعداد نظرات')
    created_at = models.DateTimeField(auto_now_add=True)
    is_active=models.BooleanField(default=False,verbose_name="وضعیت")

    def __str__(self):
        return f'self.comment.text'
    
    class Meta:
        verbose_name='نقد و بررسی'
        verbose_name_plural="نقدها و بررسی ها" 
        
class Rating(models.Model):
    product=models.ForeignKey(Product,related_name='ratings',on_delete=models.CASCADE,verbose_name='محصول')
    user=models.ForeignKey(User,on_delete=models.CASCADE,verbose_name='کاربر')
    score=models.IntegerField(validators=[MaxValueValidator(5),MinValueValidator(0)],verbose_name='امتیاز')
    created_at=models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name='امتیاز'
        verbose_name_plural="امتیازها"

