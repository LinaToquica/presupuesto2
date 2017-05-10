from __future__ import absolute_import
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from apps.propiedades.models import Sector,Fuente,Unidad_ejecutora,Fuente,Sit




class SectorSerializer(ModelSerializer):	

	class Meta:
		model = Sector
		fields =  ('codigo_sector','nombre_sector')
   


class FuenteSerializer(ModelSerializer):	

	class Meta:
		model = Fuente
		fields =  ('id','nombre_fuente')
   

class SitSerializer(ModelSerializer):	

	class Meta:
		model = Sit
		fields =  ('id','nombre_sit')
   


class UnidadSerializer(ModelSerializer):	

	class Meta:
		model = Unidad_ejecutora
		fields =  ('id','nombre_unidad')
   
