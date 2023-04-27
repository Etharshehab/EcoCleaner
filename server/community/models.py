from django.db import models
from django.utils.timezone import now
from django.utils.text import slugify

# Create your models here.


class Community(models.Model):
    created_at = models.DateTimeField(default=now)
    description = models.TextField()
    name = models.CharField(max_length=255, unique=True)
    image = models.ImageField(upload_to='communities/', blank=True, null=True)




class CommunityUser(models.Model):

    class MemberTypes(models.TextChoices):
        ADMIN = 'ADMIN', 'Admin'
        MODERATOR = 'MODERATOR', 'Moderator'
        MEMBER = 'MEMBER', 'Member'

    user = models.ForeignKey(
        'user.User', on_delete=models.CASCADE, related_name='community_memberships')
    community = models.ForeignKey(
        'community.Community', on_delete=models.CASCADE, related_name='members')
    joined_at = models.DateTimeField(auto_now_add=True)
    member_type = models.CharField(
        max_length=20,
        choices=MemberTypes.choices,
        default=MemberTypes.MEMBER,
    )
