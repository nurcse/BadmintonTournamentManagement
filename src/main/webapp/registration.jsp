<%-- 
    Document   : registration
    Created on : Jan 21, 2015, 2:34:02 AM
    Author     : shahab uddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Badminton Tournament 16</title>
		<meta name="description" content="A baler course">
		<meta name="author" content="Adi Purdila">
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap-theme.min.css">

		<style >
			body{
				padding-bottom: 50px;
			}
		</style>
    </head>
    <body>
        <!-- Navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top" id="main-navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<!-- <a href="b_home.html" class="navbar-brand">HOME</a> -->
				</div><!-- end navbar header -->

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<a href="https://www.facebook.com/events/563016010523339/" target="_blank" class="btn btn-primary navbar-btn navbar-right" style="color:white">facebook</a>
					<!-- <a href="" class="btn btn-default navbar-btn navbar-right"><span class="glyphicon glyphicon-home"></span></a> -->

					<ul class="nav navbar-nav">
						<li><a href="index.html">HOME</a></li>
						<li><a href="registration.jsp">REGISTRATION</a></li>
						<li><a href="teams.jsp">TEAMS</a></li>
						<li><a href="#section-fixture">FIXTURE</a></li>
					</ul>
				</div> <!-- end collapse -->

			</div> <!-- end container -->

		</nav>

		<!-- Banner -->
		<div class="jumbotron" style="padding-bottom:15px">
			<div class="container text-center">
                            <b><h2 style="color:#20B2AA">SUST CSE BADMINTON TOURNAMENT '16</h2></b>
				<!-- <p>It's the official site for the tournament. Fixture and update will be given here, so focus on here.</p> -->
				<!-- <div class="btn-grou1p">
					<a href="#" class="btn btn-lg btn-success">Get Information</a>
					<a href="#" class="btn btn-lg btn-default">See Statistics</a>
				</div> --> <!-- end btn-group -->
			</div> <!-- end container -->
		</div> <!-- end jumbotron -->

		<div class="demo-area">
			<div class="container">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#section-1" data-toggle="tab">Single's</a></li>
					<li ><a href="#section-2" data-toggle="tab">Double's</a></li>
					<li ><a href="#section-3" data-toggle="tab">Mix-double's</a></li>
				</ul>
				
				<div class="tab-content">
					<div class="tab-pane fade in active" id="section-1">
                                            <form action="ParticipantInfoServlet" method="doPost" role="form">
							<div class="form-group">
								<label for="form-elem-1" style="color:DarkGoldenRod">Name :</label>
                                                                <input type="text"  class="form-control" name="name">
							</div>
							<div class="form-group">
								<label for="form-elem-2"style="color:DarkGoldenRod">Registration No :</label>
                                                                <input type="text"  class="form-control" name="registration_no">
							</div>
							<div class="form-group">
								<label for="form-elem-3"style="color:DarkGoldenRod">Phone No :</label>
                                                                <input type="text"  class="form-control" name="phone_no">
							</div>
							<div class="form-group">
								<label for="form-elem-4"style="color:DarkGoldenRod">Sex :</label>
								<input type="radio" name="sex" value="male" checked>Male
								<input type="radio" name="sex" value="female">Female
							</div>
							<button type="submit" class="btn btn-warning">Submit</button>
						</form>
						<hr>

						<!-- <form action="" role="form" class="form-inline">
							<div class="form-group">
								<label for="form-elem-3">Name</label>
								<input type="text" id="form-elem-3" class="form-control">
							</div>
							<div class="form-group">
								<label for="form-elem-4">Registration No.</label>
								<input type="text" id="form-elem-4" class="form-control">
							</div> <br>
							<div class="form-group">
								<label for="form-elem-5">Mobile No.</label>
								<input type="text" id="form-elem-4" class="form-control">
							</div>
						</form> -->
					</div> 
					<div class="tab-pane fade" id="section-2">
                                            <form action="DoublesInfoInsertServlet" role="form" method="doPost">
							<div class="form-group">
								<label for="form-elem-5" style="color:DarkGoldenRod">Name(Team Lead) :</label>
                                                                <input type="text" class="form-control" name="name_lead">
							</div>
							<div class="form-group">
								<label for="form-elem-6"style="color:DarkGoldenRod">Registration No(Team Lead) :</label>
                                                                <input type="text" class="form-control" name="registration_lead">
							</div>
							<div class="form-group">
								<label for="form-elem-7" style="color:DarkGoldenRod">Name :</label>
                                                                <input type="text" class="form-control" name="name">
							</div>
							<div class="form-group">
								<label for="form-elem-8"style="color:DarkGoldenRod">Registration No :</label>
                                                                <input type="text" class="form-control" name="registration">
							</div>
							<div class="form-group">
								<label for="form-elem-9"style="color:DarkGoldenRod">Phone No(Team Lead) :</label>
								<input type="text" class="form-control" name="phone_no">
							</div>
							<div class="form-group">
								<label for="form-elem-10"style="color:DarkGoldenRod">Sex :</label>
								<input type="radio" name="sex" value="male" checked>Male
								<input type="radio" name="sex" value="female">Female
							</div>
							<button type="submit" class="btn btn-warning">Submit</button>
						</form>
						<hr>
					</div>
					<div class="tab-pane fade" id="section-3">
                                            <form action="MixDoubleInfoInsertServlet" role="form" method="doPost">
							<div class="form-group">
								<label for="form-elem-1" style="color:DarkGoldenRod">Name(Team Lead) :</label>
                                                                <input type="text" class="form-control" name="name_lead">
							</div>
							<div class="form-group">
								<label for="form-elem-2"style="color:DarkGoldenRod">Registration No(Team Lead) :</label>
                                                                <input type="text" class="form-control" name="registration_lead">
							</div>
							<div class="form-group">
								<label for="form-elem-1" style="color:DarkGoldenRod">Name :</label>
                                                                <input type="text" class="form-control" name="name">
							</div>
							<div class="form-group">
								<label for="form-elem-2"style="color:DarkGoldenRod">Registration No :</label>
                                                                <input type="text" class="form-control" name="registration">
							</div>
							<div class="form-group">
								<label for="form-elem-3"style="color:DarkGoldenRod">Phone No(Team Lead) :</label>
                                                                <input type="text" class="form-control" name="phone_no">
							</div>
							<button type="submit" class="btn btn-warning">Submit</button>
						</form>
						<hr>
					</div>
				</div> 
			</div>
		</div>

		<!-- <div class="demo-area">
			<div class="container">
				<div class="tab-content">
					<div class="tab-pane fade in active" id="section-1">
						<form action="" role="form">
							<div class="form-group">
								<label for="form-elem-1">Name</label>
								<input type="text" id="form-elem-1" class="form-control">
							</div>
							<div class="form-group">
								<label for="form-elem-2">Registration No.</label>
								<input type="text" id="form-elem-2" class="form-control">
							</div>
						</form>

						<hr>

						<form action="" role="form" class="form-inline">
							<div class="form-group">
								<label for="form-elem-3">Name</label>
								<input type="text" id="form-elem-3" class="form-control">
							</div>
							<div class="form-group">
								<label for="form-elem-4">Registration No.</label>
								<input type="text" id="form-elem-4" class="form-control">
							</div>
						</form>

					</div>
				</div>
			</div>
		</div> -->


		<!-- Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>
