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




{{ Form::open( array('action' => 'AuthController@registroDatosPersonales', 'method' => 'POST', 'role' => 'form')) }}

            <div class="col-md-6">
                
                <h3 class="dark-grey">Datos Personales</h3>
 
                <div class="form-group col-lg-6">
                    {{ Form::label('nombre', 'Nombre') }}
                    {{ Form::text('nombre_usuario', '', array('class' => 'form-control', 'required' => 'required')) }}
                </div>

                <div class="form-group col-lg-6">
                    {{ Form::label('apellido', 'Apellido') }}
                    {{ Form::text('apellido_usuario', '', array('class' => 'form-control', 'required' => 'required')) }}
                </div>
                

                <div class="form-group col-lg-6">
                    {{ Form::label('nivel_secundaria', 'Grado Ac.') }}
                    {{ Form::select('nivel_secundaria_usuario', ['SEXTO', 'SEPTIMO', 'OCTAVO', 'NOVENO', 'DECIMO', 'UNDECIMO'], null, ['class' => 'form-control']) }}
                </div>

                <div class="form-group col-lg-6">
                    {{ Form::label('genero', 'Género') }}
                    {{ Form::select('genero_usuario', ['MASCULINO', 'FEMENINO'], null, ['class' => 'form-control']) }}
                </div>

                <div class="form-group col-lg-6">
                    {{ Form::submit('Enviar', array('class' => 'btn btn-primary')) }}
                </div>



                <!-- INPUT OCULTO REPRESENTANDO EL CAMPO ROL CON VALOR 1 QUE CORRESPONDE A ESTUDIANTE -->

                {{ Form::hidden('rol_usuario', '1', array('class' => 'form-control')) }}

            </div>

        
            <div class="col-md-6">
                
                <h3 class="dark-grey">Información de Usuario</h3>
                
                <div class="form-group col-lg-14">
                    {{ Form::label('email', 'Email') }}
                   {{ Form::email('email_usuario', '', ['class' => 'form-control', 'required' => 'required']) }}
                </div>

                </div>

                <div class="form-group col-lg-6">
                    {{ Form::label('password', 'Password') }}
                    {{ Form::password('password_usuario', ['class' => 'form-control', 'required' => 'required']) }}
                </div>


                

            </div>

        </div>

{{ Form::close() }}







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
