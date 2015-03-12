<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Usuario extends Eloquent implements UserInterface, RemindableInterface {

    use SoftDeletingTrait,
        UserTrait,
        RemindableTrait;

    public static $table = 'usuarios';

    

    protected $fillable = array('nombre_usuario', 'apellido_usuario', 'email_usuario', 'password_usuario');
   
}   
