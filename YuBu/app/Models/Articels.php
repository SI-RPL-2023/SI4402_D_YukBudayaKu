<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class articel extends Model
{
    use HasFactory;

    protected $table = "articel";

    protected $fillable =[
        'tittle','description','course_image'
    ];
}

