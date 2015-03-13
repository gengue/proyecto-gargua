@extends('layouts.contenido')

@section('cabecera')
    <title>Registro</title>

@stop


@section('intro')

<div class="container">
    <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="{{ URL::to('') }}">Inicio</a></li>
            <li role="presentation" ><a href="{{ URL::to('login') }}">Login</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">GARWA</h3>
      </div>
</div>

@stop


@section('contenido')

<div class="container">



<div class="container-page">




<form action="" method="POST">

            <div class="col-md-6">
                
                <h3 class="dark-grey">Datos Personales</h3>
 
                <div class="form-group col-lg-6">
                    <label>Nombre</label>
                    <input type="text" name="nombre_usuario" class="form-control" id="" value="" required>
                </div>

                <div class="form-group col-lg-6">
                    <label>Apellido</label>
                    <input type="text" name="apellido_usuario" class="form-control" id="" value="">
                </div>
                

                <div class="form-group col-lg-6">
                    <label>Grado</label>
                    <select name="nivel_secundaria_usuario" class="form-control" id="" value="">
                        <option value="1" selected>SEXTO</option>
                        <option value="2">SEPTIMO</option>
                        <option value="3">OCTAVO</option>
                        <option value="4">NOVENO</option>
                        <option value="5">DECIMO</option>
                        <option value="6">UNDECIMO</option>
                    </select>
                </div>

                <div class="form-group col-lg-6">
                    <label>Género</label>
                    <select name="genero_usuario" class="form-control" id="" value="">
                        <option value="1" selected>MASCULINO</option>
                        <option value="2">FEMENINO</option>
                    </select>
                </div>

                <div class="form-group col-lg-12">
                    <label>Fecha Nacimiento</label>
                    <input type="date" name="fecha_nacimiento_usuario" class="form-control" id="" value="">
                </div>


                <!-- INPUT OCULTO REPRESENTANDO EL CAMPO ROL CON VALOR 1 QUE CORRESPONDE A ESTUDIANTE -->

                <input type="hidden" name="rol_usuario" class="form-control" id="" value="1">

            </div>

        
            <div class="col-md-6">
                
                <h3 class="dark-grey">Información de Usuario</h3>
                
                <div class="form-group col-lg-12">
                    <label>Email</label>
                    <input type="" name="" class="form-control" id="" value="">
                </div>

                <div class="form-group col-lg-12">
                    <label>Password</label>
                    <input type="password" name="" class="form-control" id="" value="">
                </div>


                <div class="form-group col-lg-6">
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>

            </div>

        </div>

</form>







  </div> <!-- DIV CLASS="CONTAINER" -->    
@stop







@section('footer')

<br>
<br>
<br>
<br>
<br>
<br>

    <div class="container">
        <footer class="footer">
        <p>&copy; GARWA 2015</p>
      </footer>
</div>
@stop
