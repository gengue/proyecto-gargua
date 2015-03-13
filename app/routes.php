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

Route::get('/login', 'UsuarioController@vistaLogin');
Route::get('/registro', 'UsuarioController@vistaRegistro');
Route::get('/test', 'UsuarioController@vistaTestFelder');


Route::get('/cursos', 'CursoController@vistaCursos');



// Route::get('/', array('as' => 'inicio', 'uses' => 'HomeController@ipaginaInicio'));

// Route:post() -> /login

// Route:get() -> /cursos

// Route:get() -> /cursos/{id}

// Route:

