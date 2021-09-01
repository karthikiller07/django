from django.shortcuts import render
from django.http import JsonResponse
# Create your views here.
def display(request):
    data ={
        "name":"karthik",
        "age":25

    }
    return JsonResponse(data)
