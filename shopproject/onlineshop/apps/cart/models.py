from django.db import models
from django.contrib.auth.models import User
from apps.products.models import Product

# مدل سبد خرید  
class Cart(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE,verbose_name='کاربر ایجاد کننده سبد خرید ')
    total_price = models.DecimalField(max_digits=10, decimal_places=2,verbose_name='روش حمل و نقل')
    created_at = models.DateTimeField(auto_now_add=True,verbose_name='تاریخ و زمان ایجاد سبد خرید')
    updated_at = models.DateTimeField(auto_now=True,verbose_name='تاریخ و زمان آخرین بروزرسانی سبد خرید')

    class Meta:
        verbose_name='سبد خرید'
        verbose_name_plural="سبدهای خرید" 
        
class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE, related_name='items',verbose_name='لیست سبد خرید') # شامل محصول تعداد و قیمت واحد
    product = models.ForeignKey(Product, on_delete=models.CASCADE,verbose_name='محصول سبد خرید')
    quantity = models.PositiveIntegerField(verbose_name='تعداد محصول سبد خرید')
    unit_price = models.DecimalField(max_digits=10, decimal_places=2,verbose_name='قیمت واحد محصول سبد خرید')

    class Meta:
        verbose_name='کالای سبد خرید'
        verbose_name_plural="کالاهای سبد خرید"
