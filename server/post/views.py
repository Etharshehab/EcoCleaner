from rest_framework import viewsets, mixins
from .models import Post
from .serializers import PostSerializer
from .permissions import PostOwner
from rest_framework.response import Response
from rest_framework import status


class PostView(viewsets.GenericViewSet,
               mixins.CreateModelMixin,
               mixins.ListModelMixin,
               mixins.DestroyModelMixin,
               mixins.UpdateModelMixin):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    # permission_classes = (IsAuthenticated,)
    http_method_names = ['get', 'post', 'patch', 'delete']

    def get_permissions(self):
        if self.action in ['partial_update', 'destroy']:
            self.permission_classes = [PostOwner]
        return super().get_permissions()

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        print(serializer.data)
        print("herrrrrrrrrrrrrrrrrrrrrr")
        return Response(serializer.data, status=status.HTTP_201_CREATED)
