<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Tema extends Eloquent implements UserInterface, RemindableInterface {

    use SoftDeletingTrait,
        UserTrait,
        RemindableTrait;

    public static $table = '';    

    protected $dates = ['deleted_at'];

    /*
     *  Escribir las relaciones con las demás tablas 
     */

}