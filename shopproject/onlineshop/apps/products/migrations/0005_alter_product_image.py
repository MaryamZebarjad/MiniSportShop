# Generated by Django 5.0.6 on 2024-07-19 17:22

import utils
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0004_alter_rating_score'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(upload_to=utils.FileUpload.upload_to, verbose_name='تصویر محصول'),
        ),
    ]