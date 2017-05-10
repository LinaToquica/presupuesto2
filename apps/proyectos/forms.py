# coding=utf-8
from __future__ import absolute_import
from __future__ import unicode_literals
from django import forms
from apps.proyectos.models import Proyecto



class ProyectoForm(forms.ModelForm):
	class Meta:
		model = Proyecto

		fields = [

			'anio',
			'sector',	
			'unidad_ejecutora',
			'prog',	
			'subp',
			'proy',	
			'subp2',
			'rec',		
			'sit',
			'nombre_proyecto',	
			'apropiacion_inicial',
			'apropiacion_vigente',	
			'compromiso',	
			'obligaciones',	
			'pagos',	
			'fuente',	
		]

		labels = {

			'anio':'año',
			'sector':'codigo-sector',	
			'unidad_ejecutora':'Unidad ejecutora',
			'prog':'Prog',	
			'subp':'Subp',
			'proy':'Proy',	
			'subp2':'Subp2',
			'rec':'Rec',		
			'sit':'Sit',
			'nombre_proyecto':'Nombre del proyecto',	
			'apropiacion_inicial':'Apropiación inicial',
			'apropiacion_vigente':'Apropiación vigente',	
			'compromiso':'Compromiso',	
			'obligaciones':'Obligaciones',	
			'pagos':'Pagos',	
			'fuente':'Fuente',


			

		}

		widgets = {
			
			'anio':forms.NumberInput(attrs={'class':'form-control'}),
			'sector':forms.Select(attrs={'class':'form-control'}),
			'unidad_ejecutora':forms.Select(attrs={'class':'form-control'}),
			'prog':forms.NumberInput(attrs={'class':'form-control'}),
			'proy':forms.NumberInput(attrs={'class':'form-control'}),
			'subp':forms.NumberInput(attrs={'class':'form-control'}),
			'subp2':forms.NumberInput(attrs={'class':'form-control'}),
			'rec':forms.NumberInput(attrs={'class':'form-control'}),
			'sit':forms.Select(attrs={'class':'form-control'}),
			'nombre_proyecto':forms.TextInput(attrs={'class':'form-control'}),
			'apropiacion_inicial':forms.NumberInput(attrs={'class':'form-control'}),
			'apropiacion_vigente':forms.NumberInput(attrs={'class':'form-control'}),
			'compromiso':forms.NumberInput(attrs={'class':'form-control'}),
			'obligaciones':forms.NumberInput(attrs={'class':'form-control'}),
			'pagos':forms.NumberInput(attrs={'class':'form-control'}),
			'fuente':forms.Select(attrs={'class':'form-control'}),
								
		}

