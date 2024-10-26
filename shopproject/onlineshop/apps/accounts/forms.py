from django import forms
from django.contrib.auth.models import User

class RegisterUserForm (forms.ModelForm):
    first_name=forms.CharField(
                                label="نام",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class':'form-control','placeholder':'نام را وارد کنید',}),
                                
                                )
    
    last_name = forms.CharField(label="نام خانوادگی",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'نام خانوادگی را وارد کنید'})
                                )
    
    username = forms.CharField (label="نام کاربری", 
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'نام کاربری را وارد کنید'})
                                )
    
    password1 = forms.CharField(label="رمز عبور",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.PasswordInput(attrs={'class': 'form-control','placeholder':'رمز عبور را وارد کنید'})
                                )
    
    password2 = forms.CharField(label="تکرار رمز عبور",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.PasswordInput(attrs={'class': 'form-control','placeholder':'تکرار رمز عبور را وارد کنید','style':'label-right'},)
                                )
    class Meta:
        model=User
        fields=['first_name','last_name','username','password1','password2']
    
    def clean_password2(self):
        password1=self.cleaned_data.get("password1") 
        password2=self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("تکرار رمز عبور اشتباه است")
        return password2
        
    def clean_username(self):
        username = self.cleaned_data.get("username")
        if len(username) <4 :
            raise forms.ValidationError("نام کاربری باید بیشتر از 4 کاراکتر باشد")
        # if username.exists  :
        #      raise forms.ValidationError("نام کاربری نمی تواند تکراری باشد")
        return username
    
class LoginUserForm(forms.Form):
    username=forms.CharField( 
                               label="نام کاربری",
                               error_messages={'required':'این فیلد نمی تواند خالی باشد'},
                               widget=forms.TextInput (attrs={'class':'form-control','placeholder':'نام کاربری را وارد کنید'})
                            )
    
    password=forms.CharField(
                               label="رمز عبور",
                               error_messages={'required': 'این فیلد نمی تواند خالی باشد'},
                               widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'رمز عبور را وارد کنید'})
                            )