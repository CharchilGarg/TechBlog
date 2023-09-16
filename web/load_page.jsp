<%@page import="com.blog.entities.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.blog.helper.connectionProvider"%>
<%@page import="com.blog.dao.PostDao"%>
<div class="row">
    
    <%
        
        int cid = Integer.parseInt(request.getParameter("cid"));
        
        PostDao dao = new PostDao(connectionProvider.getConnection());
        ArrayList<Post> list = null;
        
        if(cid == 0)
        {
            list = dao.getAllPost();
        }
        else
        {
            list = dao.getPostById(cid);
        }
        
        if(list.size() == 0)
        {
            out.print("<h3 class=' text-center' style='color:white' >No post in this category... </h3>");
        }
        
        for(Post p : list)
        {
    %>
        
    <div class="col-md-10">
        <div class="card mt-4">
            <div class="card-body">
                <h4><%= p.getPtitle() %></h4>
                <p><%= p.getPcontant() %></p>
               
            </div>    
                <div class="card-footer bg-primary text-center mt-4">
                    
                    <a href="#" class="btn btn-outline-light btn-sm"> <i class="fa-solid fa-thumbs-up"></i><span>10</span></a>
                    <a href="show_blog_page.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-light btn-sm"> Read more </a>
                    <a href="#" class="btn btn-outline-light btn-sm"> <i class="fa-regular fa-comment"></i><span>20</span></a>
                </div>
            </div>    
        </div>
    </div>
        
        
    <%
        }
    %>
</div>
