from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .models import Community, CommunityUser
from .serializers import ListCommunitySerializer, DetailCommunitySerializer
from rest_framework.decorators import action
from rest_framework.response import Response



class CommunityView(viewsets.ModelViewSet):
    queryset = Community.objects.all()
    serializer_class = ListCommunitySerializer
    # permission_classes = (IsAuthenticated,)
    http_method_names = ['get', 'post', 'patch', 'delete']
    lookup_field = 'slug'
    
    def get_serializer_class(self):
        if self.action == 'retrieve':
            self.serializer_class =  DetailCommunitySerializer
        return super().get_serializer_class()
    def get_object(self):
        slug = self.kwargs.get('slug')
        return self.queryset.filter(slug=slug).first()
    
    
    def retrieve(self, request, *args, **kwargs):
        return super().retrieve(request, *args, **kwargs)
    
    @action(detail=False, methods=['get'])
    def joined_communities(self, request):
        user = request.user
        communities = user.communities.all()
        serializer = self.get_serializer(communities, many=True)
        return Response(serializer.data)
    
    
    