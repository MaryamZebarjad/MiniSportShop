# Generated by Django 5.0.6 on 2024-05-28 21:43

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('products', '0004_alter_rating_score'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.PositiveIntegerField(verbose_name='تعداد محصول سفارش')),
                ('total_price', models.DecimalField(decimal_places=2, max_digits=10, verbose_name='مبلغ کل سفارش')),
                ('order_date', models.DateTimeField(auto_now_add=True, verbose_name='تاریخ ثبت سفارش')),
                ('status', models.BooleanField(default=False, verbose_name='وضعیت سفارش')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='products.product', verbose_name='محصول مورد سفارش')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='کاربر سفارش دهنده')),
            ],
            options={
                'verbose_name': 'سفارش',
                'verbose_name_plural': 'سفارش ها',
            },
        ),
    ]