from django.db import models
from apps.products.models import Product
from apps.payment.models import Payment
from django.contrib.auth.models import User

# مدل سفارش
class Order(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE,verbose_name='کاربر سفارش دهنده')
    product=models.ForeignKey(Product,on_delete=models.CASCADE,verbose_name='محصول مورد سفارش')
    quantity=models.PositiveIntegerField(verbose_name='تعداد محصول سفارش')
    total_price=models.DecimalField(max_digits=10, decimal_places=2,verbose_name='مبلغ کل سفارش')
    order_date=models.DateTimeField(auto_now_add=True,verbose_name='تاریخ ثبت سفارش')
    status=models.BooleanField(default=False,verbose_name='وضعیت سفارش') # انجام شده/انجام نشده
    payment_method = models.ForeignKey(Payment,on_delete=models.SET_NULL,null=True,blank=True,verbose_name='روش پرداخت')   
    
    class Meta:
        verbose_name='سفارش'
        verbose_name_plural="سفارش ها"
        
    def __str__(self):
        return f"Order {self.id} by {self.user.username}"