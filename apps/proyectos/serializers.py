from __future__ import absolute_import
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from apps.proyectos.models import Proyecto

class ProyectoSerializer(ModelSerializer):	

	class Meta:
		model = Proyecto
		
