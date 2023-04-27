from rest_framework.routers import DefaultRouter
from .views import CommunityView

app_name = "community"
router = DefaultRouter()
router.register('', CommunityView, basename='communities')

urlpatterns = router.urls