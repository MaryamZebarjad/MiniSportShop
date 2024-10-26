from django.urls import path
import apps.accounts.views as views

app_name='accounts'
urlpatterns=[
    path('register/',views.RegisterUserView.as_view(),name='register'),
    path('login/',views.LoginUserView.as_view(),name='login'),
    path('logout/',views.LogoutUserView.as_view(),name='logout'),
    
]
    