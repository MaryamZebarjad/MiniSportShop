# Generated by Django 5.0.6 on 2024-05-28 21:51

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0001_initial'),
        ('products', '0004_alter_rating_score'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='product',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='product', to='products.product', verbose_name='محصول مورد سفارش'),
        ),
    ]
