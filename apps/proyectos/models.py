from __future__ import absolute_import
from __future__ import unicode_literals

from django.db import models
from apps.propiedades.models import Sector, Unidad_ejecutora,Fuente,Sit

# Create your models here.

class Proyecto (models.Model):
	
	anio = models.IntegerField()
	sector = models.ForeignKey(Sector,null=False,blank=False)
	unidad_ejecutora = models.ForeignKey(Unidad_ejecutora,null=False,blank=False)
	prog = models.IntegerField()
	subp = models.IntegerField()
	proy = models.IntegerField()
	subp2 = models.IntegerField()
	rec = models.IntegerField()
	sit = models.ForeignKey(Sit,null=False,blank=False)
	nombre_proyecto = models.CharField(max_length=200)
	apropiacion_inicial = models.BigIntegerField()
	apropiacion_vigente = models.BigIntegerField()
	compromiso = models.BigIntegerField()
	obligaciones = models.BigIntegerField()
	pagos = models.BigIntegerField()
	fuente = models.ForeignKey(Fuente,null=False,blank=False)






	def __unicode__(self):
		return '{}'.format(self.nombre_proyecto)

