from django.contrib import admin
from .models import Product,Category,Brand,Comment,Rating

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display=('name',)
    search_fields=('name',)
    list_filter=('name',)

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display=('name','brand','price','stock','category','image','is_sale','is_active','star','description')
    
@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display=('name',)
    
@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display=('user','product','text','is_active','number')
    
@admin.register(Rating)
class RatingAdmin(admin.ModelAdmin):
    list_display=('score','product','user')