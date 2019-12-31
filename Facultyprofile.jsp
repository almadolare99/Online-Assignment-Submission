<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <link rel="stylesheet" href="newcss.css" type="text/css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <title>Faculty Home</title>
    </head>
    <body>
        
        
        <nav class="navbar navbar-default navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#myPage" style="font-size:20px; color:#C94B4B";><span class="glyphicon glyphicon-pencil" style="color:#000"></span>Write Up!</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav navbar-right">
                  <li><a href="#classdetails">
       <%
        try{
        String data1=session.getAttribute("msg").toString();
        out.print(data1);
        }
        catch(Exception ex){
        }
        %>
                    </a></li>
                    <li><a href="#" data-toggle="modal" data-target="#myModal">CREATE CLASS</a></li>
                <li><a href="new.jsp"><span class="glyphicon glyphicon-user" style="color:#fff"></span> LOGOUT</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div id="myModal" class="modal" tabindex="-1" role="dialog" aria-hidden="true">

                    <!-- Modal content -->
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h2>Create Class</h2>
                      </div>
                      <div class="modal-body">
                        <form action="classfac.jsp" >
                          <strong>Class Name: </strong>
                          <input type="text" name="classname"  maxlength=40 required>
                          <br><br>
                          <input type="submit" class="btn btn-info btn-lg" value="Create">
                        </form>
                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>

                  </div>            
    </body>
</html>

