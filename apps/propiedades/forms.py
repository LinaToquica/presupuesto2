# coding=utf-8
from __future__ import absolute_import
from __future__ import unicode_literals
from django import forms
from apps.propiedades.models import Sector,Fuente,Unidad_ejecutora,Fuente,Sit



class SectorForm(forms.ModelForm):
	class Meta:
		model = Sector
		fields = [	

			'codigo_sector',
			'nombre_sector',		
		]

		labels = {

			'codigo_sector': 'Código del sector',	
			'nombre_sector': 'Nombre del sector',	
		}

		widgets = {
			
			'codigo_sector':forms.TextInput(attrs={'class':'form-control'}),
			'nombre_sector':forms.TextInput(attrs={'class':'form-control'}),
					
		}


class FuenteForm(forms.ModelForm):
	class Meta:
		model = Fuente

		fields = [	
							
			'nombre_fuente',		
		]

		labels = {

			'nombre_fuente': 'Nombre del fuente',	
		}

		widgets = {			
			
			'nombre_fuente':forms.TextInput(attrs={'class':'form-control'}),
					
		}

class SitForm(forms.ModelForm):
	class Meta:
		model = Sit

		fields = [					
		
			'nombre_sit',		
		]

		labels = {

			
			'nombre_sit': 'Nombre del sector',	
		}

		widgets = {
			
			'nombre_sit':forms.TextInput(attrs={'class':'form-control'}),
					
		}


class Unidad_ejecutoraForm(forms.ModelForm):
	class Meta:
		model = Unidad_ejecutora

		fields = [	
				
			'nombre_unidad',			
		]

		labels = {

			'nombre_unidad': 'Nombre de la unidad',	
			
		}

		widgets = {
			
			'nombre_unidad':forms.TextInput(attrs={'class':'form-control'}),
			
					
		}