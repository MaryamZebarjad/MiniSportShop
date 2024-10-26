from django.urls import path
import apps.products.views as views

app_name='products'
urlpatterns=[
    path('stock/',views.show_stock.as_view(),name='stock'),
    path('product/<int:PK>',views.show_product,name='product'),
    path('category/<str:CAT>',views.show_category,name='category'),
    path('sale/',views.show_sale.as_view(),name='sale'),
    path('product/<int:PK>/add_comment/', views.add_comment, name='add_comment'),
    path('product/<int:PK>/add_rating/', views.add_rating, name='add_rating'),
     path('category/', views.category_summary, name='category_summary'),
]
    
    