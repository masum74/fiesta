   
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <!--<header class="intro-header" style="background-image: url('img/EventHome/home-bg.jpg')"> -->
    <header>
        <div class="cover"   style=" background-image:url('myassets/img/about-bg.jpg'); ">

            <center>
                <h1> </h1>
               <h1 contenteditable="true" style="color: white; ">Your Event Name Here</h1>
               <h2 contenteditable="true" style="color: white">Date</h2>
            </center>
         
               <div  style="margin-top: 165px">
                   <div class="col-sm-offset-8 col-sm-6">
                        <form action="{{ URL::to('upload')}}" method="post" enctype="multipart/form-data">
                            <input type="file" name="file" id="file">
                            <input type="submit" value="Upload" name="submit" style="color: black">
                            
                            <input type="hidden" value="{{csrf_token()}}" name="_token"> 
                
                        </form>
                   </div>
               </div>
            
           

        </div>
    </header>

    <!-- Main Content -->
    
    
    <div class="container">
        <div class="row">
            <div class=" col-md-11 col-md-offset-1">
                <div class="post-preview">
                  
                        <h4 contenteditable="true"> Date | Time </h4>
                        <h2 class="post-title" contenteditable="true">
                            Program Title
                        </h2>
                        <h4 contenteditable="true">
                            Program Description will be here. Where this program is going to be held. What will happen and 
                            other stuffs. Click here to edit
                             </h4>
                    
                    <p class="post-meta">Posted by <a href="#">You</a> on October 12, 2015</p>
                </div>
                <hr>
               
                
                <!-- Pager -->
                <ul class="pager">
                    <li class="next">
                    <center>
                        <a href="#">Add More &rarr;</a>
                    </center>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <hr>