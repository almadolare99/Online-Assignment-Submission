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
        <title>write up!</title>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
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
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li><a href="registration.jsp"><span class="glyphicon glyphicon-user" style="color:#fff";></span> REGISTER</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
  <h1 id="h01">WRITE UP!</h1>
  <p1>Online Assignment Submission</p1>
  <div>
  <br><br>
  <form action="loginfac.jsp" method="POST">
  <button class="button"><span>Login As Faculty</span></button>
  </form>
<br>
<form action="login.jsp" method="POST">
  <button class="button1"><span>Login As Student</span></button>
</form>
</div>
</div>
<!-- Container (About Section) -->
<div class="container-fluid" id="about">
  <div class="row">
    <div class="col-sm-8">
      <h2>ABOUT US</h2>
      <br>
      <h4>AN INNOVATIVE DECISION</h4>
      <p>Supports assignment submission and dynamic teacher-student interaction.</p>
      <button class="btn btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo slideanim"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey" id="ourvalues">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>OUR VALUES</h2>
      <br>
      <h4><strong>MISSION:</strong> Save Paper, Register with <strong>WRITE UP!</strong></h4>
      <h4><strong>VISION:</strong> To keep assignments safe and secure without any pen paper requirement.</h4>
    </div>
  </div>
</div>
<div class="container-fluid text-center slideanim" id="services">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-pencil logo-small"></span>
      <h4>WRITE</h4>
      <p>Make an excellent use of your mind, innovate and put the ideas into reality.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-duplicate logo-small"></span>
      <h4>SUBMIT</h4>
      <p>Don't put your work confined with pen and paper, submit it digitally.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-earphone logo-small"></span>
      <h4>INTERACT</h4>
      <p>Your doubts will be there no longer with you, interact with teachers and have it cleared.</p>
    </div>
    </div>
    </div>
    <div class="container-fluid text-center bg-grey" id="lessons">
    <h2>LESSONS TO REMEMBER</h2>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
    <h4>Education is the most powerful weapon which you can use to change the world.<br><span style="font-style:normal;">-Nelson Mandella</span></h4>
    </div>
    <div class="item">
      <h4>It is the mark of an educated mind to be able to entertain a thought without accepting it.<br><span style="font-style:normal;">-Aristotle</span></h4>
    </div>
    <div class="item">
      <h4>A teacher-student interaction cause ideas exchange.<br><span style="font-style:normal;">-Chandler Bing</span></h4>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<hr>
        
    </body>
</html>
