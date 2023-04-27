from .models import Post
from rest_framework import serializers
from .models import Post, Image


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = "__all__"

    def create(self, validated_data):
        images_data = self.context.get('request').FILES.getlist('images', None)
        validated_data.pop('images', None)
        images_data = validated_data.pop('uploaded_images', None)

        invoice = Post.objects.create(**validated_data)
        images = [
            Image(post=invoice, image=image) for image in images_data
        ]
        Image.objects.bulk_create(
            images
        )
        return invoice

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

        return super().update(instance, validated_data)
