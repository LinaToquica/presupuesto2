from __future__ import absolute_import
from django.shortcuts import render
from django.views.generic import ListView,CreateView,UpdateView,DeleteView
from apps.propiedades.models import Sector,Fuente,Unidad_ejecutora,Fuente,Sit
from apps.propiedades.forms import SectorForm,FuenteForm,SitForm,Unidad_ejecutoraForm
from apps.propiedades.Serializers import SectorSerializer,FuenteSerializer,SitSerializer,UnidadSerializer
from django.core.urlresolvers import reverse_lazy
from rest_framework.decorators import api_view
from rest_framework.response import Response
# Create your views here.

class Sector_listar(ListView):
	
	model = Sector
	template_name= 'propiedades/sector_listar.html'

class Sector_crear(CreateView):
	model = Sector
	form_class = SectorForm
	template_name= 'propiedades/sector_crear.html'
	success_url = reverse_lazy('propiedades:sector_listar')

class Sector_actualizar(UpdateView):
	model = Sector
	form_class = SectorForm
	template_name= 'propiedades/sector_crear.html'
	success_url = reverse_lazy('propiedades:sector_listar')

class Sector_eliminar(DeleteView):
	model = Sector
	template_name= 'propiedades/sector_eliminar.html'
	success_url = reverse_lazy('propiedades:sector_listar')



class Fuente_listar(ListView):
	model = Fuente
	template_name= 'propiedades/fuente_listar.html'

class Fuente_crear(CreateView):
	model = Fuente
	form_class = FuenteForm
	template_name= 'propiedades/fuente_crear.html'
	success_url = reverse_lazy('propiedades:fuente_listar')

class Fuente_actualizar(UpdateView):
	model = Fuente
	form_class = FuenteForm
	template_name= 'propiedades/fuente_crear.html'
	success_url = reverse_lazy('propiedades:fuente_listar')

class Fuente_eliminar(DeleteView):
	model = Fuente
	template_name= 'propiedades/fuente_eliminar.html'
	success_url = reverse_lazy('propiedades:fuente_listar')




class Unidad_ejecutora_listar(ListView):
	model = Unidad_ejecutora
	template_name= 'propiedades/unidad_ejecutora_listar.html'

class Unidad_ejecutora_crear(CreateView):
	model = Unidad_ejecutora
	form_class = Unidad_ejecutoraForm
	template_name= 'propiedades/unidad_ejecutora_crear.html'
	success_url = reverse_lazy('propiedades:unidad_ejecutora_listar')

class Unidad_ejecutora_actualizar(UpdateView):
	model = Unidad_ejecutora
	form_class = Unidad_ejecutoraForm
	template_name= 'propiedades/unidad_ejecutora_crear.html'
	success_url = reverse_lazy('propiedades:unidad_ejecutora_listar')

class Unidad_ejecutora_eliminar(DeleteView):
	model = Unidad_ejecutora
	template_name= 'propiedades/unidad_ejecutora_eliminar.html'
	success_url = reverse_lazy('propiedades:unidad_ejecutora_listar')
	




class Sit_listar(ListView):
	model = Sit
	template_name= 'propiedades/sit_listar.html'

class Sit_crear(CreateView):
	model = Sit
	form_class = SitForm
	template_name= 'propiedades/sit_crear.html'
	success_url = reverse_lazy('propiedades:sit_listar')

class Sit_actualizar(UpdateView):
	model = Sit
	form_class = SitForm
	template_name= 'propiedades/sit_crear.html'
	success_url = reverse_lazy('propiedades:sit_listar')

class Sit_eliminar(DeleteView):
	model = Sit
	template_name= 'propiedades/sit_eliminar.html'
	success_url = reverse_lazy('propiedades:sit_listar')
	



@api_view(['POST'])
def api_sector(request):
	cod_sector = request.data["sector_id"]
	nombre_sector = request.data["nombre"]

	

	serializer_class= SectorSerializer
	try:
		if cod_sector == '' and nombre_sector == '':
			sectores = Sector.objects.all()
			many = True
		if nombre_sector=='':
			sectores = Sector.objects.filter(codigo_sector=cod_sector)
			many = True
		if cod_sector=='':
			sectores = Sector.objects.filter(nombre_sector=nombre_sector)
			many = True
		if cod_sector != '' and nombre_sector != '':
			sectores = Sector.objects.filter(nombre_sector=nombre_sector,codigo_sector=cod_sector)
			many = True

		

		response = serializer_class(sectores,many=many)
		
		return Response(response.data)
		

	except Sector.DoesNotExist:
			return Response([{'error': 'sectores no encontrados'}])


@api_view(['POST'])
def api_fuente(request):
	cod_fuente = request.data["id"]
	nombre_fuente = request.data["nombre"]

	

	serializer_class= FuenteSerializer
	try:
		if cod_fuente == '0' and nombre_fuente == '0':
			fuentes = Fuente.objects.all()
			many = True
		if nombre_fuente=='':
			fuentes = Fuente.objects.filter(id=cod_fuente)
			many = True
		if cod_fuente=='':
			fuentes = Fuente.objects.filter(nombre_fuente=nombre_fuente)
			many = True
		if cod_fuente != '' and nombre_fuente != '':
			fuentes = Fuente.objects.filter(nombre_fuente=nombre_fuente,id=cod_fuente)
			many = True

		

		response = serializer_class(fuentes,many=many)
		
		return Response(response.data)
		

	except Fuente.DoesNotExist:
			return Response([{'error': 'fuentes no encontrados'}])
	
	

	






