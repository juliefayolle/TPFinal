<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sound as Sound;

class BaseController extends Controller
{
    public function index()
    {
      $sounds = Sound::orderBy('singer', 'asc')->paginate(5);
      return view('accueil', compact('sounds'));
    }
    public function title()
    {
      $sounds = Sound::orderBy('title', 'asc')->paginate(5);
      return view('accueil', compact('sounds'));
    }
}
