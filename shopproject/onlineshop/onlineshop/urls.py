from django.contrib import admin
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [        
        path('admin/', admin.site.urls),
        path('',include('apps.main.urls',namespace='main'),name='main'),
        path('products/',include('apps.products.urls',namespace='products'),name='products'),
        path('search/',include('apps.search.urls',namespace='search'),name='search'),
        path('accounts/',include('apps.accounts.urls',namespace='accounts'),name='accounts'),
        path('cart/',include('apps.cart.urls',namespace='cart'),name='cart'),
        path('order/',include('apps.order.urls',namespace='order'),name='order'),
        # path('payment/',include('apps.payment.urls',namespace='payment'),name='payment'),
        # path('shipping/',include('apps.shipping.urls',namespace='shipping'),name='shipping'),
       
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)

admin.site.site_header='پنل مدیریت فروشگاه'
admin.site.index_title='به پنل مدیریت خوش آمدید'

