from __future__ import absolute_import
from django.conf.urls import url
from django.contrib.auth.decorators import login_required

from apps.proyectos.views import Proyecto_listar,Proyecto_crear,Proyecto_actualizar,Proyecto_eliminar,api_proyecto


urlpatterns = [
    
    url(r'^proyecto/listar$', login_required(Proyecto_listar.as_view()),name='proyecto_listar'),
    url(r'^proyecto/nuevo$', login_required( Proyecto_crear.as_view()),name='proyecto_crear'),
    url(r'^proyecto/edit/(?P<pk>\d+)/$',login_required( Proyecto_actualizar.as_view()),name='proyecto_actualizar'),
    url(r'^proyecto/delete/(?P<pk>\d+)/$', login_required(Proyecto_eliminar.as_view()),name='proyecto_eliminar'),
     url(r'^proyecto/api$', api_proyecto,name='api3'),
   
]