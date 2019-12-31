<%-- 
    Document   : view_assignment
    Created on : Sep 11, 2019, 10:22:32 AM
    Author     : hp 430
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="view.css">
        <link rel="stylesheet" href="normalize.css">
        <link rel="stylesheet" href="style.css">
        <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <title>Students Submitted Assignments</title>
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
      <li><a href="login.jsp"> HOME</a></li>
   <li><a href="new.jsp"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
<br><br><br><br>
<div class="container">
<h1>List of<span> Assignments</span> for <span><%%></span></h1>
<div id="body">
 <table width="80%" border="1" class="responstable">
    <tr>
    <th colspan="12" bgcolor="#4CAF50">DETAILS OF STUDENTS SUBMITTED ASSIGNMENTS<label></label></th>
    </tr>
    <tr bgcolor="#4CAF50">
    <td><strong>Roll No:</strong></td>
    <td><strong>Name</strong></td>
    <td><strong>Assignment id</strong></td>
    <td><strong>Assignment Name</strong></td>
    <td><strong>Date</strong></td>
    <td><strong>Files</strong></td>
    <td><strong>Status</strong></td>
    </tr>
        <%
            String id=request.getParameter(ab);
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/abc?serverTimezone=EST5EDT","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT * FROM UPLOAD2 where asid='"+id+"'");
           while(rs.next()){
            %>
            <tr>

            <td><%=rs.getString("rollno") %></td>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getString("asid") %></td>
            <td><%=rs.getString("asname") %></td>
            <td><%=rs.getString("date") %></td>
            <td><%=rs.getString("file") %></td>
            <td></td>
            </tr>
            <% 
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
           
 </table>
</div>
</div>
    </body>
</html>
