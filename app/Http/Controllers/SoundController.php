<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sound;
use App\Availability;
use App\Gender;

class SoundController extends Controller
{
   public function insertOne(Request $request)
  {
    $sound = new Sound;
    $sound->title = $request->title;
    $sound->singer = $request->singer;
    $sound->release = $request->release;
    $sound->price = $request->price;
    $sound->availability_id = $request->availability;
    $sound->save();
    $sound->genders()->attach($request->gender);
    return redirect('/');

   }
    public function deleteOne(Request $request, $id)
   {
     $dog = Sound::find($id);
     $dog->genders()->detach();
     $dog->delete();
     return redirect('/');
    }
     public function updateOne(Request $request, $id)
    {
      $sound = Sound::find($id);
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
      return view('update', ['availabilities' => $availabilities, 'genders' => $genders, 'sound' => $sound]);
    }

      public function updateOneAction(Request $request)
     {
         $sound = Sound::find($request->id);
         $sound->title = $request->title;
         $sound->singer = $request->singer;
         $sound->release = $request->release;
         $sound->price = $request->price;
         $sound->availability_id = $request->availability;
         $sound->save();
         $sound->genders()->detach();
         $sound->genders()->attach($request->genders);
         return redirect('/');
     }
}
