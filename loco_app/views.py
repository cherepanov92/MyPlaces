from django.shortcuts import render
from django_pandas.io import read_frame
from .models import *

def statistics(request):
    if request.method == 'GET':
        qs = Mileage.objects.all()
        df = read_frame(qs)
        context = {'title': 'index', 'all_info': df}
        print(df)
        return render(request, 'index.html', context)


