from django.db import models

# Create your models here.
class Album(models.Model):
    image_url = models.CharField(max_length=250, unique=True)
    
    def __str__(self):
        return self.image_url
    
