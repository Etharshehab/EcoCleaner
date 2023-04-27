from rest_framework import serializers
from .models import Community


class ListCommunitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Community
        fields = ('id', 'name', 'description', 'image', 'created_at')
        
        
        
        
class DetailCommunitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Community
        fields = "__all__"