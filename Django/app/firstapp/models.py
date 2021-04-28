from django.db import models

# Create your models here.

class Articulos(models.Model):
    id_articulo = models.IntegerField(primary_key=True)
    nombre_articulo = models.CharField(max_length=20, blank=True, null=True)
    precio = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'articulos'


class Bitacora(models.Model):
    id_bitacora = models.AutoField(primary_key=True)
    id_articulo = models.IntegerField(blank=True, null=True)
    nombre_nuevo = models.CharField(max_length=20, blank=True, null=True)
    nombre_viejo = models.CharField(max_length=20, blank=True, null=True)
    precio_nuevo = models.CharField(max_length=20, blank=True, null=True)
    precio_viejo = models.CharField(max_length=20, blank=True, null=True)
    usuario = models.CharField(max_length=30, blank=True, null=True)
    fecha = models.DateTimeField(blank=True, null=True)
    accion = models.CharField(max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'bitacora'


class Paciente(models.Model):
    clave = models.CharField(primary_key=True, max_length=3)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    telefono = models.IntegerField()
    email = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'paciente'

class Car(models.Model):
    id = models.AutoField(primary_key=True)
    brand = models.CharField(max_length=100)
    model = models.CharField(max_length=100)
    year = models.IntegerField()
    version = models.CharField(max_length=100)
    country_of_origin = models.CharField(max_length=50)
    body_style = models.CharField(max_length=50)
    engine_location = models.CharField(max_length=50)
    engine_cylinders = models.IntegerField()
    engine_hp = models.IntegerField()
    engine_nm = models.IntegerField()
    drive = models.CharField(max_length=50)
    transmission = models.CharField(max_length=50)
    doors = models.IntegerField()
    weight = models.IntegerField()
    rating = models.FloatField()

    class Meta:
        managed = False
        db_table = 'car'

class User(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    surname = models.CharField(max_length=100)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    api_key = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'user'

#class RatingM(models.Model):
#    car_id = models.ForeignKey(Car, models.DO_NOTHING)
#    rating = models.IntegerField()
#    user_id = models.ForeignKey('User', models.DO_NOTHING)
#
#    class Meta:
#        managed = False
#        db_table = 'rating'

class RatingM(models.Model):
    car = models.ForeignKey(Car, models.DO_NOTHING)
    rating = models.IntegerField()
    user = models.ForeignKey('User', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'rating'