from __future__ import absolute_import
from django.shortcuts import render
from apps.proyectos.models import Proyecto
from apps.proyectos.forms import ProyectoForm
from django.core.urlresolvers import reverse_lazy
from django.views.generic import ListView,CreateView,UpdateView,DeleteView
from apps.proyectos.serializers import ProyectoSerializer
from rest_framework.decorators import api_view
from rest_framework.response import Response


# Create your views here.
class Proyecto_listar(ListView):
	model = Proyecto
	template_name= 'proyectos/proyecto_listar.html'

class Proyecto_crear(CreateView):
	model = Proyecto
	form_class = ProyectoForm
	template_name= 'proyectos/proyecto_crear.html'
	success_url = reverse_lazy('proyectos:proyecto_listar')

class Proyecto_actualizar(UpdateView):
	model = Proyecto
	form_class = ProyectoForm
	template_name= 'proyectos/proyecto_crear.html'
	success_url = reverse_lazy('proyectos:proyecto_listar')

class Proyecto_eliminar(DeleteView):
	model = Proyecto
	template_name= 'proyectos/proyecto_eliminar.html'
	success_url = reverse_lazy('proyectos:proyecto_listar')


@api_view(['POST'])
def api_proyecto(request):
	id_proyecto = request.data["id"]
	nombre_proyecto = request.data["nombre"]

	

	serializer_class= ProyectoSerializer
	try:
		if id_proyecto == '0' and nombre_proyecto == '0':
			proyectos = Proyecto.objects.all()
			many = True
		if nombre_proyecto=='':
			proyectos = Proyecto.objects.filter(id=id_proyecto)
			many = True
		if id_proyecto=='':
			proyectos = Proyecto.objects.filter(nombre_proyecto=nombre_proyecto)
			many = True
		if id_proyecto != '' and nombre_proyecto != '':
			proyectos = Proyecto.objects.filter(nombre_proyecto=nombre_proyecto,id=id_proyecto)
			many = True


		

		response = serializer_class(proyectos,many=many)
		
		return Response(response.data)
		

	except Proyecto.DoesNotExist:
			return Response([{'error': 'proyectos no encontrados'}])
	
	

	
