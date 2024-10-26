from django.db import models

# مدل حمل و نقل
class Shipping(models.Model):
    name = models.CharField(max_length=100,verbose_name='روش حمل و نقل')
    cost = models.DecimalField(max_digits=10, decimal_places=2,verbose_name='هزینه حمل و نقل')
    delivery_time = models.IntegerField(verbose_name='زمان تحویل/روز') # In days

    class Meta:
        verbose_name='حمل و نقل'
        verbose_name_plural="حمل و نقل ها"
