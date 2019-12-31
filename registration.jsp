<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		 <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
		<link rel="stylesheet" href="demo.css">
		<link rel="stylesheet" href="sky-form.css">
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="sky-forms-ie8.css">
		<![endif]-->
		
		<!--[if lt IE 10]>
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="js/jquery.placeholder.min.js"></script>
		<![endif]-->		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/sky-forms-ie8.js"></script>
		<![endif]-->
        <title>Register Here!</title>
    </head>
    <body style="background-image:url(slide11.jpg)">
    <h2 style="text-align:right">Go back to<a href="new.jsp" style="color:maroon;text-decoration:none;"> Home </a>page...</h2>
    <div class="body body-s">
		
	<form action="registration.jsp" class="sky-form" method="POST" name="myForm">
            <header>Registration form</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" placeholder="Username" name="username">
							<b class="tooltip tooltip-bottom-right">Only characters and numbers</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"></i>
							<input type="text" placeholder="Email address" name="email">
							<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" placeholder="Password" name="password">
							<b class="tooltip tooltip-bottom-right">Only characters and numbers</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" placeholder="Confirm password" name="password_agn">
							<b class="tooltip tooltip-bottom-right">Only characters and numbers</b>
						</label>
					</section>
				</fieldset>
					
				<fieldset>
					
					
					<section>
						<label class="select">
							<select name="gender">
								<option value="0" selected disabled>Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
							<i></i>
						</label>
					</section>
					<section>
						<label class="select">
							<select name="profession">
								<option value="0" selected disabled>Profession</option>
								<option value="Student">Student</option>
								<option value="Faculty">Faculty</option>
							</select>
							<i></i>
						</label>
					</section>
					<section>
						<label class="select">
							<select name="department">
								<option value="0" selected disabled>Department</option>
								<option value="CSE">CS</option>
								<option value="IT">IT</option>
							</select>
							<i></i>
						</label>
					</section>
				</fieldset>
                                
				<footer>
					<input type="submit" class="button" value="Register">
				</footer>
  			</form>
                                
  	</div>
        <%
            String prof=request.getParameter("profession");
            
            int i=1;
            String user=request.getParameter("username");
            String ema=request.getParameter("email");
            String pass=request.getParameter("password");
            String gen=request.getParameter("gender");
            String dept=request.getParameter("department");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc?serverTimezone=EST5EDT","root","");
        Statement st=con.createStatement();
        if(prof.equals("Student")){
        st.executeUpdate("insert into student(id,username,email,password,gender,department)"
                + "values('"+i+"','"+user+"','"+ema+"','"+pass+"','"+gen+"','"+dept+"')");
        %>
        <script>
        alert("You are registered\n\ GO BACK TO HOMEPAGE AND LOGIN");
        </script>
        <%
        }
        if(prof.equals("Faculty")){
        st.executeUpdate("insert into faculty(username,email,password,gender,department)"
                + "values('"+user+"','"+ema+"','"+pass+"','"+gen+"','"+dept+"')");
        %>
        <script>
        alert("You are registered\n\ GO BACK TO HOMEPAGE AND LOGIN");
        </script>
    <%
        }
        }
        catch(Exception e){
            out.print(e);
        }
        %> 
    </body>
</html>
