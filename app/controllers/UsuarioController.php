<?php

class UsuarioController extends BaseController {

 
    public function vistaLogin()
    {
        return View::make('Usuario.login');
    }

    public function vistaRegistro()
    {
        return View::make('Usuario.registro');
    }

    public function vistaTestFelder()
    {

        $test = Test::all();


        return View::make('Usuario.test', array('test' => $test));
    }

    public function registro_datos_personales()
    {

        // guardamos en la bd los datos personales del usuario
        // rol = ESTUDIANTE
        // direccionamos a la vista del test de Felder
    }

    public function registro_estilo_aprendizaje($id)
    {

        // Recibimos el id del usuario
        // guardamos el estilo de aprendizaje y lo ponemos como activo
        // redireccionamos la vista de todos los cursos, llevando datos del usuario  

        
    }

    


}
