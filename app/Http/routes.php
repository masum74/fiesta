<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
use Illuminate\Support\Facades\Input;


Route::get('/','mainPageController@show');

    
   Route::get('/reg', function()
  {
      $registered_user = App\Registered_user::all();
     return view('auth/register',compact('registered_user'));
  });

   Route::get('/event', 'eventController@create');
  
  Route::post('upload','eventController@setCoverPath');
  Route::post('schedule','eventController@setSchedule');
  



   Route::post('/reg/store',function(){
    
       $registered_user = new App\Registered_user;
       $registered_user->Name= Input::get('name');
        $registered_user->Contact_number= Input::get('ContactNumber');
        $registered_user->Address=Input::get('Address');
        $registered_user->DOB=Input::get('DOB');
        $registered_user->Gender= Input::get('gender');
        $registered_user->Email=Input::get('email');
        $registered_user->password=bcrypt(Input::get('password'));
        $registered_user->save();
        return back();
        //return view ('auth/register')

    
   });
   Route::post('/login','loginController@postLogin');
  // Route::get('/logged','loginController@logged' );

   
   Route::post('/createpost', [
    'uses' => 'PostController@postCreatePost',
    'as' => 'post.create',
    'middleware' => 'auth'
]);
   
 Route::post('/edit', [
    'uses' => 'PostController@postEditPost',
    'as' => 'edit'
]);

Route::post('/like', [
    'uses' => 'PostController@postLikePost',
    'as' => 'like'
]);


Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
