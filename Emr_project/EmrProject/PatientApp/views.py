from django.shortcuts import render, redirect
from .models import Patient ######
# Create your views here.
def list_of_doctors(request):
    doctors = Patient.objects.all() ######
    return render(request, 'list.html', {'doctors' : doctors}) ######

def create_doctor(request):
    if request.method == 'GET':
        return render(request, 'create.html')
    elif request.method == 'POST':
        name = request.POST['name'] 
        disease = request.POST['disease'] 
        age = request.POST['age'] 
        patient = Patient(name = name, disease = disease, age = age)
        patient.save()
        return redirect('list_of_doctors')         

def edit_doctor(request, id):
    if request.method == 'GET':
        patient = Patient.objects.get(id = id)
        return render(request, 'edit.html', {'patient' :patient})
    elif request.method == 'POST':
        patient = Patient.objects.get(id = id)
        patient.name = request.POST['name'] 
        patient.disease = request.POST['disease'] 
        patient.age = request.POST['age'] 
        patient.save()
        return redirect('list_of_doctors')    


def delete_doctor(request, id):
    patient = Patient.objects.get(id = id)
    patient.delete()
    return redirect('list_of_doctors')