<?php


use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;



class Usuario extends Eloquent implements UserInterface , RemindableInterface{

    use UserTrait, RemindableTrait;


    public $table = 'usuarios';


    public function cursos(){
        return $this->belongsToMany('Curso', 'usuarios_cursos', 'id_usuario', 'id_curso');
    }
    public function estilo(){
        return $this->belongsTo('EstiloAprendizaje', 'id_estilo_aprendizaje');
    }
    
   protected $hidden = array('password_usuario', 'remember_token');


}   




