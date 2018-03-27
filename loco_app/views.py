from django.shortcuts import render
from .models import *

def statistics(request):
    if request.method == 'GET':
        all_info = Mileage.objects.all()
        context = {'title': 'index', 'all_info': all_info}
        return render(request, 'index.html', context)
