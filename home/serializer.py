from rest_framework import serializers
from .models import Briefcase

class BriefcaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Briefcase
        fields = ['name']