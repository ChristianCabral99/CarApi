# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Articulos(models.Model):
    id_articulo = models.IntegerField(primary_key=True)
    nombre_articulo = models.CharField(max_length=20, blank=True, null=True)
    precio = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'articulos'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


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


class Car(models.Model):
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


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Paciente(models.Model):
    clave = models.CharField(primary_key=True, max_length=3)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    telefono = models.IntegerField()
    email = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'paciente'


class Rating(models.Model):
    car = models.ForeignKey(Car, models.DO_NOTHING)
    rating = models.IntegerField()
    user = models.ForeignKey('User', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'rating'


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
