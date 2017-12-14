<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sound as Sound;

class BaseController extends Controller
{
    public function index()
    {
      $sounds = Sound::paginate(5);
      return view('accueil', compact('sounds'));
    }
}
