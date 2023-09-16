
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "com.blog.servlet.signupServlet" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Singup Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
       
        <main  >
            <div class ="cotainer primary-baackground">
                <div class="col-md-4 offset-md-4 ">
                    <div class="card">
                        <div class="card-header primary-baackground text-white text-center">
                            <br>
                            <span><i class="fa-solid fa-circle-user fa-3x"></i></span>
                            <br>
                            <p>Signup here</p>
                        </div>
                        
                        <div class="card-body">
                            
                            <form id="signup-form" action="signupServlet" method="POST" >
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">User Name</label>
                                  <input type="text" name ="user_name" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter name">
                                  
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                
                                
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                <div class="form-group">
                                  <label for="gender">Select Gender</label>
                                  <br>
                                  <input type="Radio"  id="gender" name ="gender" value="Male">Male
                                  <input type="Radio"  id="gender" name ="gender" value="Female">Female
                                </div>
                                
                                
                                <div class="form-check">
                                  <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" name="check" for="exampleCheck1">terms & condition</label>
                                </div>
                                
                                <br>
                                <button type="submit" class="btn btn-primary">Submit</button>
                              </form>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </main>
        
        
        
        
        
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            
            $(document).ready(function(){
                console.log("loaded.....");
                
                
                $('#signup-form').on('submit',function(event){
                    event.preventDefault();
                    
                    let form = new FormData(this);
                    
                    $.ajax({
                        
                        url: "signupServlet",
                        type: 'POST',
                        data: form,
                        success : function(data, textStatus,jqXHR){
                            
                            if(data.trim() === 'done')
                            {
                                swal("Succesfully done....")
                                .then((value) => {
                                  window.location = "login_page.jsp";
                                });
                            }
                            else
                            {
                                swal(data);
                            }
                            
                        },
                        error : function(jqXHR, textStatus, errorThrow)
                        {
                           
                            swal("Try again");
                            
                        },
                        processData : false,
                        contentType : false
                        
                    });
                    
                });
            });
            
        </script>
            
    </body>
</html>
