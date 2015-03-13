<?php

class AuthController extends BaseController {




    public function getLogin()
    {

        if (Auth::check())
        {
            return Redirect::to('/cursos');
        }

        return View::make('Auth.login');
    }




    public function vistaRegistro()
    {
        return View::make('Auth.registro');
    }




    public function postLogin(){

            //return Input::all();
        $rules = array(
            'email' => 'required',
            'password' => 'required'
        );

        $validator = Validator::make(Input::all(), $rules);

        // process the login
        if ($validator->fails()) {
            return Redirect::to('login')
                            ->with('mensaje_error', 'Datos no válidos')
                            ->withInput();
        } else {

            $data = array(
                'email' => Input::get('email'),
                'password' => Input::get('password')
            );

            if (Auth::attempt($data))
            {
                return Redirect::to('/cursos');
            }
            return Redirect::to('login')
                            ->with('mensaje_error', 'Tus datos son incorrectos')
                             ->withInput(Input::except('password_field'));
        }

    }

    public function getLogout(){
        Auth::logout();
        return Redirect::to('login')->with('mensaje', 'Ha cerrado sesion!');
    }

    public function vistaTestFelder()
    {

        $test = Test::all();


        return View::make('Auth.test', array('test' => $test));
    }


    public function registroDatosPersonales(){


        // Salvar datos personales

        // enviar el id del usuario creado

        return Redirect::to('test');
    }


    public function completarRegistro(){


        // Salvar estilo aprendizaje y poner activo al usuario

        return Redirect::to('login');
    }


}
