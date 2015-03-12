@extends('layouts.contenido')

@section('cabecera')
    <title>Login</title>

@stop


@section('intro')

<div class="container">
    <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="{{ URL::to('') }}">Inicio</a></li>
            <li role="presentation" ><a href="{{ URL::to('registro') }}">Registro</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">GARWA</h3>
      </div>
</div>

@stop


@section('contenido')

<div class="container">

{{-- <div class="jumbotron">
        <h1>Login</h1>
      </div> --}}

      <!-- FORMULARIO DE LOGIN -->  
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Iniciar Sesión</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Olvidaste tu password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            




                        <form  method="POST" action="" id="loginform" class="form-horizontal" role="form">


                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-email" type="email" class="form-control" name="email" value="" placeholder="email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-star"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                    </div>
                                    




                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Recordarme
                                        </label>
                                      </div>
                                    </div>



                                <!-- BOTONES DE ENVÍO -->     

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      {{-- <a id="btn-login" href="#" class="btn btn-success">Login</a> --}}
                                      <button type="submit" class="btn btn-success">Login</button>
                                      <button type="button" class="btn btn-primary">Facebook</button>
                                      <button type="button" class="btn btn-primary">Twitter</button>

                                    </div>

                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Si no tienes una cuenta! 
                                        <a href="{{ URL::to('registro') }}" >
                                            Regístrate Aquí
                                        </a>
                                        </div>
                                    </div>
                                </div>


                            </form>     



                        </div>                     
                    </div>  
        </div>
    
  </div> <!-- DIV CLASS="CONTAINER" -->    
@stop



@section('alert')

<div class="container">
    <div>
         <div   style="display: none;" id="login-error" class="alert alert-danger mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"></div>                    
            </div> 
</div>
        
        
    
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
