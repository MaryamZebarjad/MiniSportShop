from django.db import models

# مدل پرداخت
class Payment(models.Model):
    name = models.CharField(max_length=100,verbose_name='نام روش پرداخت') # پرداخت اینترنتی/ پرداخت در محل
    method = models.CharField(max_length=100,verbose_name='نوع پرداخت') # کارت اعتباری / انتقال بانکی
    description = models.TextField(blank=True, null=True,verbose_name='توضیحات روش پرداخت') # دستورالعمل پرداخت

    def __str__(self):
        return self.name+" "+self.method
    
    class Meta:
        verbose_name='پرداخت'
        verbose_name_plural="پرداخت ها"
        
