<?php namespace App\Http\Controllers;
use \Input as Input;

class eventController extends Controller 
{

    public $name="";
    public $date="";
    public $coverPath="";
    

   
    public function create()
    {
        return view('event/createEventView',['path'=>$this->coverPath]);
    } 
    
    public function setName(string $name)
    {
        $this->name=$name;
    }
    
    public function setDate(string $date)
    {
        $this->date=$date;
    }
    
    public function setCoverPath()
    {
        if(Input::hasFile('file'))
        { 
            $file=Input::file('file');
            $file->move('myassets/img/EventImage',$file->getClientOriginalName());
            
            $a= "myassets/img/EventImage/". $file->getClientOriginalName();

            $this->coverPath=$a;
            
            return view('event/createEventView',  ['path'=>$this->coverPath]);

        }
    }
    
     public function setSchedule()
    {
       // $schedule=Input::text('body');
       // echo $schedule;
         echo "a";
    }
    
    
}
