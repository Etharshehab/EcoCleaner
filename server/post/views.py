from rest_framework import viewsets
from .models import Post
from .serializers import PostSerializer
from .permissions import PostOwner


class PostView(viewsets.ModelViewSet):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    # permission_classes = (IsAuthenticated,)
    http_method_names = ['get', 'post', 'patch', 'delete']

    def get_permissions(self):
        if self.action in ['partial_update', 'destroy']:
            self.permission_classes = [PostOwner]
        return super().get_permissions()
