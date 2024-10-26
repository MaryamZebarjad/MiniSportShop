from django.urls import path
import apps.search.views as views

app_name='search'
urlpatterns=[
    path('',views.SearchResult.as_view(),name='search'),
]
    