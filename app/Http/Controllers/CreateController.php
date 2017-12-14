<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Availability;
use App\Gender;

class CreateController extends Controller
{
  public function index()
  {
    $availabilitiesAll = Availability::all();
    $availabilities = [];
    foreach ($availabilitiesAll as $value) {
      $availabilities[$value->id] = $value->availability;
    }


    $gendersAll = Gender::all();
    $genders = [];
    foreach ($gendersAll as $value) {
      $genders[$value->id] = $value->gender;
    }

    return view('create', ['availabilities' => $availabilities, 'genders' => $genders]);
  }
}
