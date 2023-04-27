from rest_framework import viewsets
from .models import Community, CommunityUser
from .serializers import ListCommunitySerializer, DetailCommunitySerializer
from rest_framework.decorators import action
from rest_framework.response import Response
from post.models import Post
from post.serializers import PostSerializer


class CommunityView(viewsets.ModelViewSet):
    queryset = Community.objects.all()
    serializer_class = ListCommunitySerializer
    # permission_classes = (IsAuthenticated,)
    http_method_names = ['get', 'post', 'patch', 'delete']

    def get_serializer_class(self):
        if self.action == 'retrieve':
            self.serializer_class = DetailCommunitySerializer
        return super().get_serializer_class()

    def retrieve(self, request, *args, **kwargs):
        return super().retrieve(request, *args, **kwargs)

    @action(detail=False, methods=['get'])
    def joined_communities(self, request):
        user = request.user
        communities = user.communities.all()
        serializer = self.get_serializer(communities, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['get'], url_path='<int:pk>/posts')
    def community_posts(self, request, pk=None):
        community = self.get_object()
        posts = Post.objects.filter(community=community)
        page = self.paginate_queryset(posts)
        if page is not None:
            serializer = PostSerializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = PostSerializer(posts, many=True)
        return Response(serializer.data)
