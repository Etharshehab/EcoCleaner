# Generated by Django 4.1.7 on 2023-04-27 16:36

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Community',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
                ('description', models.TextField()),
                ('rules', models.TextField()),
                ('name', models.CharField(max_length=255, unique=True)),
                ('slug', models.SlugField(max_length=255, unique=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='communities/')),
            ],
        ),
        migrations.CreateModel(
            name='CommunityUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('joined_at', models.DateTimeField(auto_now_add=True)),
                ('member_type', models.CharField(choices=[('ADMIN', 'Admin'), ('MODERATOR', 'Moderator'), ('MEMBER', 'Member')], default='MEMBER', max_length=20)),
                ('community', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='members', to='community.community')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='communities_memberships', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
