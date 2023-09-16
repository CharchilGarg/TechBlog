
<%@page import="com.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        
        <Main class="d-flex align-items-center primary-baackground " style="height : 75vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4  offset-md-4">
                        
                        <div class="card ">
                            <div class="hearde primary-baackground text-white text-center">
                                <br>
                                <span><i class="fa-solid fa-circle-user fa-3x"></i></span>
                                <br>
                                <p>Login here</p>
                            </div>
                            
                            <%
                                Message m =  (Message)session.getAttribute("mes");
                                if(m != null)
                                {
                                %>
                                
                                <div class="alert <%= m.getCssClass() %>" role="alert">
                                    <%= m.getContact() %>
                                </div>
                                
                                <%
                                    
                                    session.removeAttribute("mes");
                                }
                            %>
                            
                            <div class="card-body">
                                <form action="loginServlet" method="POST">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                  </form>
                            </div>
                                
                        </div>
                        
                    </div>
                </div>
            </div>
            
        </main>
            
        
        
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
