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
        <title>Class</title>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <%
        String name=request.getParameter("classname"); 
        %>
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage" style="font-size:20px; color:#C94B4B";><span class="glyphicon glyphicon-pencil" style="color:#000"></span><% out.print(name);%></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#services">CLASS DETAILS</a></li>
        <li><a href="new.jsp"><span class="glyphicon glyphicon-user" style="color:#fff";></span> LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
        <div class="jumbotron text-center">
  
  <div>
  <br><br>
  <form action="submit_assignment.jsp">
  <button class="button"><span>Submit Assignment</span></button>
  </form>
<br>
<form action="todo.jsp" method="POST">
  <button class="button1"><span>TO DOs</span></button>
</form>
</div>
</div>
    </body>
</html>
