
    <header>
        
        
        @if($path=="") <div class="cover"   style=" background-image:url('myassets/img/about-bg.jpg'); ">
        @else  <div class="cover"   style=" background-image:url({{$path}}); ">
        @endif
           

            <center>
                <h1> </h1>
               <h1 contenteditable="true" style="color: white; ">Your Event Name Here</h1>
               <h2 contenteditable="true" style="color: white">Date</h2>
            </center>
         
               <div  style="margin-top: 165px">
                   <div class="col-sm-offset-8 col-sm-6">
                        <form action="{{ URL::to('upload')}}" method="post" enctype="multipart/form-data">
                           
                            <input type="file" name="file" id="file" class="hidden"/>
                            <label for="file">Select Photo</label>
                            
                            <input type="submit" value="Upload" name="submit" style="color: black">
                            
                            <input type="hidden" value="{{csrf_token()}}" name="_token"> 
                
                        </form>
                   </div>
               </div>
            
           

        </div>
    </header>

    <!-- Main Content -->
    
                    
                      
    <form action="{{ URL::to('schedule')}}" method="post" enctype="multipart/form-data">

        <div class="row">

            <div class=" col-md-6 col-md-offset-3">
                 <h3> <b> Add your Schedule </b> </h3>
                <textarea class="form-control" name="body" id="new-post" rows="5" placeholder="Your Schedule"></textarea>
            </div>

            <div class=" col-md-6 col-md-offset-3" style="margin-top: 10px">
             <button type="submit" class="btn btn-primary">Create Schedule &darr;</button>
             <input type="hidden" value="{{csrf_token()}}" name="_token"> 
            </div>
         </div>
    </form>
                            
    <hr>
    
    <hr>
    
    <div class="col-sm-offset-10 col-sm-8">
         <button type="submit" class="btn btn-success" style="margin-right: 2px;"> LAUNCH EVENT </button>
    </div>