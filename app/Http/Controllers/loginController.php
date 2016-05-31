<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Registered_user;
use DB;

class loginController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
		 */
	public function logged(){
		
		//return "hi";
	}

	public function postLogin(Request $request){

			$this->validate($request,[
				'email' => 'required',
				'password' => 'required'
				]);
			if(!Auth::attempt(['email' => $request['email'],'password' => $request['password']])){
				return redirect()->back()->with(['fail' => 'Could not log you in !']);
			}

                        $email = $request->input('email');
                        $registered_user = new Registered_user;
                        $user = DB::table('registered_user')->where('email', $email)->first();
                        
                        return view('logged_mainPageView',compact('user') );
			

	}


	public function index()
	{
		//
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
