<?php

class CursoController extends BaseController {

 
    public function vistaCursos()
    {

        $cursos = Curso::all();

        return View::make('Curso.cursos', array('cursos' => $cursos));
    }

    

}