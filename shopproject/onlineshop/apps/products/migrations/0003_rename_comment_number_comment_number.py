# Generated by Django 5.0.6 on 2024-05-22 20:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_comment_comment_number'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='comment_number',
            new_name='number',
        ),
    ]
