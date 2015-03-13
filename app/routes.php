<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


// Ruta al Home
// Route::get('/', function()
// {
//     return View::make('inicio');
// });


Route::get('/', 'HomeController@inicio');

Route::get('/test', 'AuthController@vistaTestFelder');


Route::get('login', 'AuthController@getLogin');
Route::post('login', 'AuthController@postLogin');
Route::get('logout', 'AuthController@getLogout');


Route::get('/registro', 'AuthController@vistaRegistro');
Route::post('/registro', 'AuthController@completarRegistro');
Route::post('/registro', 'AuthController@registroDatosPersonales');


Route::group(['before' => 'auth'], function()
{
    Route::get('/cursos', 'CursoController@vistaCursos'); // listo

    Route::get('/cursos/{id}', 'CursoController@cursoId');

    Route::get('/unidad/{id}', 'UnidadController@unidadId');

    Route::get('/tema/{id}', 'TemaController@temaId');

    Route::get('/leccion/{id}', 'LeccionController@leccionId');
});









//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//


// RUTAS PARA PRUEBAS DE LA BASE DE DATOS


Route::get('testdb', function(){

    $estilo = new EstiloAprendizaje;
    $estilo->nombre_estilo_aprendizaje = 'estilo rcn';
    $estilo->save();

    $usuario1 = new Usuario();

    $usuario1->nombre_usuario = "Test";
    $usuario1->apellido_usuario = "Prueba";
    $usuario1->email = "test@example.com";
    $usuario1->password = Hash::make("test");
    $usuario1->id_estilo_aprendizaje = $estilo->id;
     //este campo no existe en la bd
     //$usuario1->nickname_usuario = 'test';
    $usuario1->save();

});


Route::get('listTestdb', function(){

   $usuario = Usuario::find(1);

   $usuarios = DB::table('usuarios')
                ->join('estilos_aprendizaje', 'usuarios.id_estilo_aprendizaje', '=', 'estilos_aprendizaje.id')
                ->get();


    $estilo = $usuario->estilo->nombre_estilo_aprendizaje;


    print_r($estilo);
});


// Route::get('/', array('as' => 'inicio', 'uses' => 'HomeController@ipaginaInicio'));

// Route:post() -> /login

// Route:get() -> /cursos

// Route:get() -> /cursos/{id}

// Route:

