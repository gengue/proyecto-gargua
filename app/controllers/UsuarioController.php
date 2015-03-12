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
        return View::make('Usuario.test');
    }

}
