<?php

class CursoController extends BaseController {

 
    public function vistaCursos()
    {

        $cursos = Curso::all();

        return View::make('Curso.cursos', array('cursos' => $cursos));
    }



   public function show($id){

      // mostrar información del curso seleccionado por el id

      // listamos las unidades asociadas a este curso

   }

  

}