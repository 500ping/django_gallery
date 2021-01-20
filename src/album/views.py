from django.shortcuts import render
from .models import Album

def index(request):
    images = Album.objects.all().order_by('-id')

    context = {
        'images': images,
    }

    return render(request, 'index.html', context=context)