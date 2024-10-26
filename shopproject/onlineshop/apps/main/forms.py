from django import forms
from .models import Message
from django.forms.utils import ValidationError

    
class MessageForm(forms.ModelForm):
    full_name=forms.CharField(
                                label="نام و نام خانوادگی",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class':'form-control','placeholder':'نام و نام خانوادگی را وارد کنید',}),
                                
                                )
    
    email = forms.EmailField(label="ایمیل",
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'ایمیل را وارد کنید'})
                                )
    
    subject = forms.CharField (label="موضوع پیام", 
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'موضوع پیام را وارد کنید'})
                                )
    message = forms.CharField (label="متن پیام" , 
                                error_messages={'required':' این فیلد نمی تواند خالی باشد'},
                                widget=forms.TextInput(attrs={'class': 'form-control','placeholder':'متن پیام را وارد کنید'})
                                )
    
    class Meta:
        model=Message
        fields=['full_name','email','subject','message']