from django.db import models
from django.utils import timezone


class Message(models.Model):
    full_name=models.CharField(max_length=60,verbose_name='نام و نام خانوادگی')
    email=models.EmailField(max_length=250,verbose_name='ایمیل')
    subject=models.CharField(max_length=200,verbose_name=' عنوان پیام')
    message=models.TextField(verbose_name='متن پیام')
    is_seen=models.BooleanField(default=False,verbose_name='وضعیت مشاهده توسط مدیر')
    register_date=models.DateTimeField(default=timezone.now,verbose_name='تاریخ ثبت پیام')
    
    def __str__(self):
        return self.full_name+""+self.subject
    class Meta:
        verbose_name='پیام'
        verbose_name_plural='پیام ها'
