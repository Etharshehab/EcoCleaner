from rest_framework.permissions import IsAuthenticated


class PostOwner(IsAuthenticated):
    msg = 'You are not the owner of this post'

    def has_object_permission(self, request, view, obj):
        return obj.user == request.user
