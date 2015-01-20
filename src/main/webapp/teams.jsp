<%-- 
    Document   : teams
    Created on : Jan 21, 2015, 2:38:23 AM
    Author     : shahab uddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Badmintor Tournament 15</title>
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
					<a href="https://www.facebook.com/events/1543809075856716/?ref=70" class="btn btn-primary navbar-btn navbar-right" style="color:white">facebook</a>
					<!-- <a href="" class="btn btn-default navbar-btn navbar-right"><span class="glyphicon glyphicon-home"></span></a> -->

					<ul class="nav navbar-nav">
						<li><a href="index.html">HOME</a></li>
						<li><a href="registration.html">REGISTRATION</a></li>
						<li><a href="teams.html">TEAMS</a></li>
						<li><a href="#section-fixture">FIXTURE</a></li>
					</ul>
				</div> <!-- end collapse -->

			</div> <!-- end container -->

		</nav>

		<!-- Banner -->
		<div class="jumbotron" style="padding-bottom:15px">
			<div class="container text-center">
				<b><h2 style="color:#20B2AA">SUST CSE BADMINTON TOURNAMENT '15</h2></b>
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
					<div class="tab-pane fade in active" id="section-1" style="padding-top:20px">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">Single's(Male)</h4>
							</div>
							<table class="table">
								<tr>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
								<tr>
									<td>Rajesh</td>
									<td>2013331063</td>
									<td>Completed</td>
								</tr>
								<tr>
									<td>Ozayer Islam</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
							</table>
						</div>
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4 class="panel-title">Single's(Female)</h4>
							</div>
							<table class="table">
								<tr>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
								<tr>
									<td>Rajesh</td>
									<td>2013331063</td>
									<td>Completed</td>
								</tr>
								<tr>
									<td>Ozayer Islam</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="tab-pane fade" id="section-2" style="padding-top:20px">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title">Double's(Male)</h4>
							</div>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
								<tr>
									<td>Rajesh</td>
									<td>2013331063</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
								<tr>
									<td>Ozayer Islam</td>
									<td>20133310</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
							</table>
						</div>
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4 class="panel-title">Double's(Female)</h4>
							</div>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
								<tr>
									<td>Rajesh</td>
									<td>2013331063</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
								<tr>
									<td>Ozayer Islam</td>
									<td>20133310</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="tab-pane fade" id="section-3" style="padding-top:20px">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">Mix-Double's</h4>
							</div>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
								<tr>
									<td>Rajesh</td>
									<td>2013331063</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
								<tr>
									<td>Ozayer Islam</td>
									<td>20133310</td>
									<td>Rajesh</td>
									<td>20133310</td>
									<td>Completed</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div> 
		</div>


		<!-- Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>
