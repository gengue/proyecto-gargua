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


<h2>ESTILOS DE APRENDIZAJE DE FELDER (ILS)</h2>
    <p class="lead">
        Instrucciones
    </p>
    
    <div class="alert alert-info">

        <ul>
            <li><p>Seleccione la opción "a" o "b" para indicar su respuesta a cada pregunta. Solo puede seleccionar una respuesta.</p></li>
            <li><p>Si tanto "a" y "b" parecen aplicarse a usted, seleccione aquella que se aplique con mayor frecuencia.</p></li>
        </ul>

    </div>

  </div> <!-- DIV CLASS="CONTAINER" --> 




<!-- TABLA CON PREGUNTAS DEL TEST -->

  <div class="container">

        <div class="row">
        
        
        <div class="col-md-12">
        <h4>Cuestionario</h4>
        <div class="table-responsive">

                
      <table id="test" class="table table-bordred table-striped">
                   
           <thead>
               <th>No</th>
               <th>Pregunta</th>
               <th>Opción A</th>
               <th>Opción B</th>
           </thead>


        <tbody>
        
            <tr>
                <td>1</td>
                <td>Entiendo mejor algo</td>
                <td>Si lo practico <input type="checkbox" class="checkthis" /></td>
                <td>Si pienso en ello <input type="checkbox" class="checkthis" /></td>
            </tr>

            <tr>
                <td>2</td>
                <td>Me considero </td>
                <td>realista <input type="checkbox" class="checkthis" /></td>
                <td>innovador <input type="checkbox" class="checkthis" /></td>
            </tr>

            <tr>
                <td>3</td>
                <td>Cuando pienso acerca de lo que hice ayer, es más probable que lo haga sobre la base de </td>
                <td>una imagen <input type="checkbox" class="checkthis" /></td>
                <td>palabras <input type="checkbox" class="checkthis" /></td>
            </tr>

            <tr>
                <td>4</td>
                <td>Tengo tendencia a</td>
                <td>entender los detalles de un tema pero no ver claramente su estructura completa <input type="checkbox" class="checkthis" /></td>
                <td>entender la estructura completa pero no ver claramente los detalles <input type="checkbox" class="checkthis" /></td>
            </tr>

            <tr>
                <td>5</td>
                <td>pregunta 5</td>
                <td> <input id="a5" type="checkbox" class="checkthis" /> respuesta a5 </td>
                <td>respuesta b5 <input type="checkbox" class="checkthis" /></td>
            </tr>
        
     
        
       
        
       
        
        </tbody>
            
</table>

                
            </div>
            
        </div>
    </div>


      
  </div>

<!-- FIN TABLA CON PREGUNTAS DEL TEST -->


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