from django import forms
from .models import Comment,Rating

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['text']

class RatingForm(forms.ModelForm):
    class Meta:
        model=Rating
        fields=['score']
        widgets={
            'score': forms.NumberInput(attrs={'min':1,'max':5})
        }