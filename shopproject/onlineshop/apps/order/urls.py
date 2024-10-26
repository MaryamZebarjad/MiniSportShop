from django.urls import path
import apps.order.views as views


app_name='order'

urlpatterns=[
    path('order_list/',views.order_list,name='order_list'),
    path('create_order/',views.create_order,name='create_order'),
    # path('create_order/<int:order_id>/',views.create_order, name='create_order'),
]
