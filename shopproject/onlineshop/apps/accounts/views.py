from django.contrib import messages
from django.shortcuts import render,redirect
from .forms import RegisterUserForm,LoginUserForm
from django.views import View
from django.contrib.auth.models import User
from django.contrib.auth import login,logout,authenticate
################################################################################## 
class RegisterUserView(View):
    template_name="accounts/register.html"
    
    def dispatch(self,request,*args,**kwargs):
        if request.user.is_authenticated:
            return redirect("main:index")
        return super().dispatch(request,*args,**kwargs)
    
    def get(self,request,*args,**kwargs): 
        form=RegisterUserForm()
        return render(request,self.template_name,{"form":form})
   
    def post(self,request,*args,**kwargs): 
        form=RegisterUserForm(request.POST)
        if form.is_valid():
            data=form.cleaned_data
            user=User(
                        first_name=data['first_name'], 
                        last_name=data['last_name'], 
                        username=data['username']
                       ) 
            user.set_password(data["password1"])
            user.save()
            messages.success(request,'ثبت نام با موفقیت انجام شد','success')
            return redirect('main:index')
        else:
            messages.error(request,'ثبت نام با خطا مواجه شد','danger') 
            return render(request,self.template_name,{"form":form}) 
##################################################################################     
class LoginUserView(View):
    template_name="accounts/login.html"
    
    def dispatch(self,request,*args,**kwargs):
        if request.user.is_authenticated:
            return redirect("main:index")
        return super().dispatch(request,*args,**kwargs)
    
    def get(self,request,*args,**kwargs): 
        form=LoginUserForm()
        return render(request,self.template_name,{"form":form})
    
    def post(self,request,*args,**kwargs):
        form=LoginUserForm(request.POST)
        if form.is_valid():
            data=form.cleaned_data
            user=authenticate(username=data['username'],password=data['password'])
            if user is not None: 
                login(request,user)
                messages.success(request,'ورود با موفقیت انجام شد','success')
                next_url=request.GET.get('next')
                if next_url is not None:
                    return redirect(next_url)
                else:
                    return redirect('main:index')
            else:
                messages.error(request,'کاربر یافت نشد','danger')
                return render(request,self.template_name,{"form":form})
        else:
                messages.error(request,'اطلاعات وارد شده معتبر نمی باشد','danger')
                return render(request,self.template_name,{"form":form})
##################################################################################             
class LogoutUserView(View):  
    def dispatch(self,request,*args,**kwargs):
        if not request.user.is_authenticated:
            return redirect("main:index")
        return super().dispatch(request,*args,**kwargs)
    
    def get(self,request,*args,**kwargs):
        logout(request)
        messages.success(request,'خدانگهدار','success') 
        return redirect('main:index')
