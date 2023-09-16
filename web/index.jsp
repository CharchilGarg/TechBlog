
<%@page import="com.blog.helper.connectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    </head>
    <body>
        
        <%@include file= "navbar.jsp" %>
        
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron text-white primary-baackground">
                <div class="container">
                    <H3>Welocme to tech blog</H3>
                    <p>Computer programming is the process of performing particular computations (or more generally, accomplishing specific computing results), usually by designing and building executable computer programs. Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a particular programming language, commonly referred to as coding).[1][2] The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. </p>
                    <button class="btn btn-outline-light ">Start ! It's free  <span><i class="fa-solid fa-arrow-up-right-from-square"></i></span></button>
                    <a href="login_page.jsp" class="btn btn-outline-light "><span><i class="fa-solid fa-circle-user"></i></span> Log in</a>
                </div>
            </div>
            
        </div>
        
        <div class ="container">
            
            <div class="row mb-2">
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
            </div>
            
            <div class="row ">
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
                
                <div class ="col-md-4">
                    
                    <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Java programing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-baackground ">Go somewhere</a>
                    </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    </body>
</html>
