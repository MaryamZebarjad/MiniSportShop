from django.urls import path
import apps.main.views as views

app_name='main'
urlpatterns=[
    path('',views.ProductList.as_view(),name='index'),
    path('products/',views.ProductList.as_view(),name='products'),
    path('contact/',views.ContactView.as_view(),name='contact'),
    path('about/',views.about,name='about'),
]
    