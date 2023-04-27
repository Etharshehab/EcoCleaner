from .models import Post
from rest_framework import serializers
from .models import Post, Image
from django.utils import timezone


class ImageSerializer(serializers.ModelSerializer):

    class Meta:
        model = Image
        exclude = ['post']


class PostSerializer(serializers.ModelSerializer):
    images = ImageSerializer(many=True, required=False)

    class Meta:
        model = Post
        fields = "__all__"
        read_only_fields = [
            'user',
            'created_at',
            'updated_at',

        ]

    def create(self, validated_data):
        images_data = self.context.get('request').FILES.getlist('images', None)
        user = self.context.get('request').user
        post = Post.objects.create(**validated_data, user=user)
        if images_data:
            images = [
                Image(post=post, image=image) for image in images_data
            ]
            Image.objects.bulk_create(
                images
            )
        return post

    def update(self, instance, validated_data):
        images_data = self.context.get('request').FILES.getlist('images', None)
        if images_data:

            instance.images.all().delete()
            images = [
                Image(post=instance, image=image) for image in images_data
            ]
            Image.objects.bulk_create(
                images
            )
        validated_data['updated_at'] = timezone.now()
        return super().update(instance, validated_data)
