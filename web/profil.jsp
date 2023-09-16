<%@page import="java.util.ArrayList"%>
<%@page import="com.blog.entities.cata"%>
<%@page import="com.blog.helper.connectionProvider"%>
<%@page import="com.blog.dao.PostDao"%>
<%@page import="com.blog.entities.Message"%>
<%@page import="com.blog.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    user u = (user)session.getAttribute("currentUser");
    if(u == null)
    {
        response.sendRedirect("login_page.jsp");
    }
    
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            
            
            body{
                background : url(img/bg1.png);
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
    </head>
    <body>
        <!--/*Navbar Start */-->
        
        <nav class="navbar navbar-expand-lg navbar-dark primary-baackground">
            <a class="navbar-brand" href="#"><i class="fa-solid fa-star-of-life"></i>Tech Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="profil.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"  >Contact</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#!" data-toggle="modal" data-target="#Add-post-modal" >Post</a>
                </li>
                
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Categaries
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Programming language</a>
                    <a class="dropdown-item" href="#">Project implementation </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">DSA </a>
                  </div>
                </li>
                
                
              </ul>
              
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link " href=#!" data-toggle="modal" data-target="#profilModal" ><%= u.getName() %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="logout">Logout</a>
                    </li>
                </ul>
                
            </div>
          </nav>

        
        
        <!--Navbar End-->
        
        
        <!--Modal-->

                   <!-- Modal -->
                        <div class="modal fade" id="profilModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header primary-baackground text-white">
                                <h5 class="modal-title" id="exampleModalLabel">Tech blog</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <div class="container text-center">
                                      <img src="img/<%= u.getProfil() %>" alt="" style="border-radius: 50%" />
                                      
                                      <h5 class="modal-title" id="exampleModalLabel"><%= u.getName() %></h5>
                                      
                                      <div id="profile-details">
                                            <table class="table">
                                              <tbody>
                                                <tr>
                                                  <th scope="row">Id</th>
                                                  <td><%= u.getId() %></td>

                                                </tr>
                                                <tr>
                                                  <th scope="row">Email</th>
                                                  <td><%= u.getEmail() %></td>

                                                </tr>
                                                <tr>
                                                  <th scope="row">Gender</th>
                                                  <td><%= u.getGender() %></td>

                                                </tr>
                                              </tbody>
                                            </table>
                                      </div>
                                      
                                                  <div id="profile-edit" style="display: none" >
                                                      <h3 class="mt-2">Please edit carefully</h3>
                                                      <form action="editServlet" method="post" enctype="multipart/form-data">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>Id</td>
                                                                    <td><%= u.getId() %></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>Name</td>
                                                                    <td><input tpye="text" class="form-control" name="user_name" value="<%= u.getName() %>" ></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>Email</td>
                                                                    <td><input tpye="email" class="form-control" name="user_email" value="<%= u.getEmail() %>" ></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>Password</td>
                                                                    <td><input tpye="password" class="form-control" name="user_password" value="<%= u.getPassword() %>" ></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>Gender</td>
                                                                    <td><%= u.getGender() %></td>
                                                                </tr>

                                                                

                                                            </table>
                                                          
                                                          <div class="container text-center">
                                                              <button type="submit" class="btn btn-outline-primary">SAVE</button>
                                                          </div>
                                                      </form>
                                                  </div>            
                                      
                                  </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" id="edit-profile-btn" >Edit</button>
                              </div>
                            </div>
                          </div>
                        </div>
        
        <!--Modal-->
        
        
        <!--Post Modal-->
            
            

            <!-- Modal -->
                <div class="modal fade" id="Add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Enter post details...</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <div class="modal-body">
                            
                            <form id="add-post-form" action="AddPostServlet" method="POST" >
                                
                                <div class="form-group">
                                    <select class="form-control"  name ="cid">
                                        <option disabled selected >---Select category---</option>
                                        <%
                                            PostDao dao = new PostDao(connectionProvider.getConnection());
                                            ArrayList<cata> list = dao.getALLCategries();
                                            for(cata c : list)
                                            {
                                        %>
                                        <option value="<% out.print(c.getCid());  %>"><% out.print(c.getName()); %></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                
                                <div  class="form-group" >
                                    <input name="ptitle" type="text" placeholder="Enter post title" class="form-control"/>
                                </div>
                                <div  class="form-group">
                                    <textarea name="pcontant" class="form-control" placeholder="Enter post contant" style="height: 170px"></textarea>
                                </div>
                                <div  class="form-group">
                                    <textarea name="pcode" class="form-control" placeholder="Enter post program (if any)" style="height: 170px "></textarea>
                                </div>
                                    
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-outline-primary" >Post</button>
                                    </div>
                            </form>
                            
                        </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
            
            
        <!--End Post Modal-->
        
        
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
        
    
        
                            <!--Main body of the page-->
                            
                            <Main>
                                <div class="container">
                                    <div class="row mt-4">
                                        
                                        <div class="col-md-3">
                                            <div class="list-group">
                                                <a href="#" onclick="getPost(0,this)" class=" c-link list-group-item list-group-item-action active">
                                                  All posts
                                                </a>
                                                
                                                <%
                                                    PostDao postdao = new PostDao(connectionProvider.getConnection());
                                                    ArrayList<cata> l1 = postdao.getALLCategries();
                                                    for(cata x : l1)
                                                    {
                                                %>
                                                
                                                <a href="#" onclick="getPost(<%= x.getCid()%>,this)" class=" c-link list-group-item list-group-item-action"><%= x.getName() %></a>
                                                <%
                                                    }
                                                %>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-9">
                                            <div class ="container text-center" id="loader">
                                                <i class="fa fa-refresh fa-6 fa-spin"></i>
                                                <h4 class="mt-2">Loading....</h4>
                                                
                                            </div>
                                            <div class="container-fluid" id="post-container">
                                                
                                            </div>
                                        </div> 
                                    </div>
                                  
                                </div>
                                
                            </Main>
                                
//                         
                            <!--End of main body of the page-->
        
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            
            $(document).ready(function(){
                
                let check = false;
                
                $('#edit-profile-btn').click(function(){
                    
                    if(check == false)
                    {
                        $('#profile-details').hide();

                        $('#profile-edit').show();
                        check =true;
                        $(this).text("BACK");
                    }
                    else
                    {
                        $('#profile-details').show();

                        $('#profile-edit').hide();
                        check =false;
                        $(this).text("EDIT");
                    }
                });
        
            });
            
        </script>
        
        <!--Add post-->
        
        <script>
            
            $(document).ready(function(){
                
                
                
                $('#add-post-form').on('submit',function(event){
                    event.preventDefault();
                    console.log("form is submited");
                    let form = new FormData(this);
                    
                    
                    $.ajax({
                        
                        url: "AddPostServlet",
                        type: 'POST',
                        data: form,
                        success : function(data, textStatus,jqXHR){
                            
                            console.log(data);
                            if(data.trim() == 'Done')
                            {
                                swal("Good job!", "Saved successfully!", "success");
                            }
                            else
                            {
                                swal("Error!", "Something went wrong", "error");
                            }
                            
                        },
                        error : function(jqXHR, textStatus, errorThrow)
                        {
                           
                          swal("Error!", "Something went wrong", "error");
                            
                        },
                        processData : false,
                        contentType : false
                        
                    });
                    
                });
            });
            
        </script>
        
        <script>
            
            function getPost(catId,temp){
                
                $(".c-link").removeClass('active');
                
                $.ajax({
                    
                    url : "load_page.jsp",
                    data:{cid: catId},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $('#loader').hide();
                        $('#post-container').html(data);
                        $(temp).addClass('active');
                    }
                    
                });
                
            } 
            
            
            $(document).ready(function(){
                
                let ref = $('.c-link')[0]
                getPost(0,ref);
                
            })
           
            
        </script>
            
        
    </body>
</html>
