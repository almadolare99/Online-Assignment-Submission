<%-- 
    Document   : post_assignment
    Created on : Sep 20, 2019, 1:04:49 AM
    Author     : hp 430
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="postassignment.css" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>Post Assignment</title>
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
 <form action="post_assignment.jsp" method="POST" >
 <h1>POST ASSIGNMENT!</h1>
        
        <fieldset>
          <legend>Details:</legend>
          <label for="assid">Assignment Id:</label>
          <input type="text" name="asid" required>
          
          <label for="assname">Assignment Name:</label>
          <input type="text" name="asname" required>
          
          <label for="name">Assignment Details:</label>
          <textarea name="details" rows="8" cols="20" required>
          </textarea>
          
          <label for="date">Due Date:</label>
          <input type="date" name="date" required>
        </fieldset>
       
 <button type="submit">UPLOAD</button>
 </form>
    <%
            String aid=request.getParameter("asid");
            String aname=request.getParameter("asname");
            String det=request.getParameter("details");
            String dd=request.getParameter("date");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc?serverTimezone=EST5EDT","root","");
        Statement st=con.createStatement();
        
        st.executeUpdate("insert into assignments(assignmentid,assignmentname,details,duedate)"
                + "values('"+aid+"','"+aname+"','"+det+"','"+dd+"')");
    %><script>
        alert("New assignment given");
        </script>
 <%
        }
        catch(Exception e){
                out.print(e);
                }
            %>
    </body>
</html>
