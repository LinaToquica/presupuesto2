# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-05-10 20:55
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('proyectos', '0003_auto_20170510_1545'),
    ]

    operations = [
        migrations.AlterField(
            model_name='proyecto',
            name='unidad_ejecutora',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='propiedades.Unidad_ejecutora'),
        ),
    ]
