from __future__ import unicode_literals

from django.db import models

# Create your models here.

#modelo para  sectores
class Sector (models.Model):
	codigo_sector = models.CharField(primary_key=True,max_length=50)
	nombre_sector = models.CharField(max_length=300)

	def __unicode__(self):
		return '{}'.format(self.nombre_sector)

class Sector2 (models.Model):
	codigo_sector = models.CharField(max_length=50)
	nombre_sector = models.CharField(max_length=300)

	def __unicode__(self):
		return '{}'.format(self.nombre_sector)


#modelo para unidad ejecutora
class Unidad_ejecutora (models.Model):
	
	nombre_unidad = models.CharField(max_length=200)

	def __unicode__(self):
		return '{}'.format(self.nombre_unidad)

# modelo para fuentes
class Fuente (models.Model):
	
	nombre_fuente = models.CharField(max_length=100)

	def __unicode__(self):
		return '{}'.format(self.nombre_fuente)

#modelo para sits (en el ecxcel es un campo que se dennomina asi)
class Sit (models.Model):
	
	nombre_sit = models.CharField(max_length=10)

	def __unicode__(self):
		return '{}'.format(self.nombre_sit)


