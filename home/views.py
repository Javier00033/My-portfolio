from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import Briefcase
from .serializer import BriefcaseSerializer

def home(request):
    return render(request, 'home/home.html')

def projects(request):
    return render(request, 'home/projects.html')

def contact(request):
    return render(request, 'home/contact.html')
