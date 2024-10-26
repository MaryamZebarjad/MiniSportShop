from django.views import View
from django.db.models import Q
from apps.products.models import Product,Category 
from django.shortcuts import render, redirect
from django.core.paginator import Paginator

class SearchResult(View):
    template_name="search/search_results.html"
    def get(self,request,*args,**kwargs): 
        query=self.request.GET.get("q","") 
        if not query:
            products = Product.objects.none()
        else:
            products=Product.objects.filter( 
            Q(name__icontains=query)|Q(category__name__icontains=query),is_active=True ).order_by('category__name','-stock')
        paginator = Paginator(products,4)  
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        context = {
            "products": page_obj,
            "page_obj": page_obj,
            "query":query
        }
        return render(request,self.template_name,context)