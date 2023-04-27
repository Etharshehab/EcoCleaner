from django.db import models
from django.utils.timezone import now
# Create your models here.


class Post(models.Model):
    class Status(models.TextChoices):
        OPEN = 'OPEN', 'Open'
        IN_PROGRESS = 'IN_PROGRESS', 'In Progress'
        DONE = 'DONE', 'Done'

    
    description = models.TextField()
    location = models.CharField(max_length=255)
    status = models.CharField(
        max_length=255, choices=Status.choices, default=Status.OPEN)
    user = models.ForeignKey(
        'user.User', on_delete=models.CASCADE, related_name='posts')
    community = models.ForeignKey(
        'community.Community', on_delete=models.CASCADE, related_name='posts', default=None)
    created_at = models.DateTimeField(default=now)
    updated_at = models.DateTimeField(default=now)
    
    
    

class Image(models.Model):
    post = models.ForeignKey(
        'post.Post', on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='posts/', blank=True, null=True)
