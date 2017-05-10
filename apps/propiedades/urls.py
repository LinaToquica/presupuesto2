from __future__ import absolute_import
from django.conf.urls import url
from django.contrib.auth.decorators import login_required


from apps.propiedades.views import Sector_listar,Sector_crear,Sector_actualizar,Sector_eliminar,api_sector
from apps.propiedades.views import Fuente_listar,Fuente_crear,Fuente_actualizar,Fuente_eliminar,api_fuente
from apps.propiedades.views import Sit_listar,Sit_crear,Sit_actualizar,Sit_eliminar
from apps.propiedades.views import Unidad_ejecutora_listar,Unidad_ejecutora_crear,Unidad_ejecutora_actualizar,Unidad_ejecutora_eliminar


urlpatterns = [
    
    url(r'^sector/listar$', login_required(Sector_listar.as_view()),name='sector_listar'),
    url(r'^sector/nuevo$', login_required( Sector_crear.as_view()),name='sector_crear'),
    url(r'^sector/edit/(?P<pk>\d+)/$',login_required( Sector_actualizar.as_view()),name='sector_actualizar'),
    url(r'^sector/delete/(?P<pk>\d+)/$', login_required(Sector_eliminar.as_view()),name='sector_eliminar'),
    url(r'^sector/api$', api_sector,name='api'),

    url(r'^fuente/listar$', login_required(Fuente_listar.as_view()),name='fuente_listar'),
    url(r'^fuente/nuevo$', login_required( Fuente_crear.as_view()),name='fuente_crear'),
    url(r'^fuente/edit/(?P<pk>\d+)/$',login_required( Fuente_actualizar.as_view()),name='fuente_actualizar'),
    url(r'^fuente/delete/(?P<pk>\d+)/$', login_required(Fuente_eliminar.as_view()),name='fuente_eliminar'),
    url(r'^fuente/api$', api_fuente,name='api2'),

    url(r'^sit/listar$', login_required(Sit_listar.as_view()),name='sit_listar'),
    url(r'^sit/nuevo$', login_required( Sit_crear.as_view()),name='sit_crear'),
    url(r'^sit/edit/(?P<pk>\d+)/$',login_required( Sit_actualizar.as_view()),name='sit_actualizar'),
    url(r'^sit/delete/(?P<pk>\d+)/$', login_required(Sit_eliminar.as_view()),name='sit_eliminar'),

    url(r'^unidad/listar$', login_required(Unidad_ejecutora_listar.as_view()),name='unidad_ejecutora_listar'),
    url(r'^unidad/nuevo$', login_required( Unidad_ejecutora_crear.as_view()),name='unidad_ejecutora_crear'),
    url(r'^unidad/edit/(?P<pk>\d+)/$',login_required( Unidad_ejecutora_actualizar.as_view()),name='unidad_ejecutora_actualizar'),
    url(r'^unidad/delete/(?P<pk>\d+)/$', login_required(Unidad_ejecutora_eliminar.as_view()),name='unidad_ejecutora_eliminar'),


]