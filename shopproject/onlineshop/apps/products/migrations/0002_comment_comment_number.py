# Generated by Django 5.0.6 on 2024-05-22 20:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='comment_number',
            field=models.IntegerField(default=0, verbose_name='تعداد نظرات'),
        ),
    ]
