<%-- 
    Document   : post_assignment
    Created on : Sep 10, 2019, 10:05:12 PM
    Author     : hp 430
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Submission-Write Up!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="postassignment.css" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
      <a class="navbar-brand" href="" style="font-size:20px; color:#C94B4B";><span class="glyphicon glyphicon-pencil" style="color:#000"></span>Write Up!</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li><a href="new.jsp"> HOME</a></li>
   <li><a href="new.jsp"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="body">
 <form action="upload.jsp" method="POST" >
 <h1>SUBMIT ASSIGNMENT!</h1>
        
        <fieldset>
          <legend>Details:</legend>
          <label for="rollno">RollNo:</label>
          <input type="text" name="rollno" required>
          
          <label for="name">Name</label>
          <input type="text" name="name" required>
          
          <label for="assid">Assignment Id:</label>
          <input type="text" name="asid" required>
          
          <label for="assname">Assignment Name:</label>
          <input type="text" name="asname" required>
          <label for="date">Date:</label>
          <input type="date" name="date" required>
        </fieldset>
        
        <fieldset>
           <input type="file" name="file">
        </fieldset>
       
 <button type="submit">UPLOAD</button>
 </form>
   
    </body>
</html>
