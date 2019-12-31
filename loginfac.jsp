<%-- 
    Document   : loginfac
    Created on : Sep 7, 2019, 4:53:37 PM
    Author     : hp 430
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="reset.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
        <link rel="stylesheet" href="loginstyle.css">
        <title>login</title>
    </head>
    <body style="background:url(slide11.jpg)";>
    <div class="container">
        <div class="info">
        <h1>Login As Faculty</h1><span>
        </div>
    </div>
    <div class="form">
    <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
    <form class="login-form" action="faclogincheck.jsp" method="POST">
        <p>Username:</p><br>
        <input type="text" placeholder="username" name="username">
        <p>Password:</p><br>
        <input type="password" placeholder="password" name="password">
        <button type="submit" class="button" name="action">Login</button>
        <p class="message">Not registered? <a href="registration.jsp">Create an account</a></p>
    </form>
        </div>
        
    </body>
</html>