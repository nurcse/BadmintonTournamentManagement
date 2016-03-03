<%-- 
    Document   : teams
    Created on : Jan 21, 2015, 2:38:23 AM
    Author     : shahab uddin
--%>
<%@ page import="information.DataService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import= "java.sql.ResultSet" %>
<%@ page import= "java.sql.SQLException" %>

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
                
                <% 
                    ResultSet result;
                    ResultSet result2;
                    DataService dataService = new DataService();
                %>
                
		<div class="demo-area">
			<div class="container">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#section-1" data-toggle="tab">Single's</a></li>
					<li ><a href="#section-2" data-toggle="tab">Double's</a></li>
					<li ><a href="#section-3" data-toggle="tab">Mix-double's</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane fade in active" id="section-1" style="padding-top:20px">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">Single's(Male)</h4>
							</div>
                                                    <% 
                                                        result = dataService.getSinglesDataMale();
                                                    %>
							<table class="table">
                                                            <tr>
								<th>Name</th>
								<th>Registration No.</th>
								<th>Status</th>
                                                            </tr>
                                                            <% while(result.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> Completed </td>
                                                                </tr> <% } %>
                                                            <% 
                                                                result = dataService.getSinglesDataMalePending();
                                                            %>
                                                            <% while(result.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> Pending </td>
                                                                </tr> <% } %>
							</table>
						</div>
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4 class="panel-title">Single's(Female)</h4>
							</div>
                                                        <% 
                                                        result = dataService.getSinglesDataFemale();
                                                        %>
							<table class="table">
                                                            <tr>
								<th>Name</th>
								<th>Registration No.</th>
								<th>Status</th>
                                                            </tr>
                                                            <% while(result.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> Completed </td>
                                                                </tr> <% } %>
                                                            <% 
                                                                result = dataService.getSinglesDataFemalePending();
                                                            %>
                                                            <% while(result.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> Pending </td>
                                                                </tr> <% } %>
							</table>
						</div>
					</div>

					<div class="tab-pane fade" id="section-2" style="padding-top:20px">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">Double's(Male)</h4>
							</div>
                                                    <% 
                                                        result = dataService.getDoublesDataMale(1);
                                                        result2 = dataService.getDoublesDataMale(0);
                                                    %>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Completed </td>
                                                                </tr> <% } %>
                                                    <% 
                                                        result = dataService.getDoublesDataMalePending(1);
                                                        result2 = dataService.getDoublesDataMalePending(0);
                                                    %>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Pending </td>
                                                                </tr> <% } %>
							</table>
						</div>
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4 class="panel-title">Double's(Female)</h4>
							</div>
                                                    <% 
                                                        result = dataService.getDoublesDataFemale(1);
                                                        result2 = dataService.getDoublesDataFemale(0);
                                                    %>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Completed </td>
                                                                </tr> <% } %>
                                                    <% 
                                                        result = dataService.getDoublesDataFemalePending(1);
                                                        result2 = dataService.getDoublesDataFemalePending(0);
                                                    %>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Pending </td>
                                                                </tr> <% } %>
							</table>
						</div>
					</div>

					<div class="tab-pane fade" id="section-3" style="padding-top:20px">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4 class="panel-title">Mix-Double's</h4>
							</div>
                                                    <% 
                                                        result = dataService.getMixDoublesData(1);
                                                        result2 = dataService.getMixDoublesData(0);
                                                    %>
							<table class="table">
								<tr>
									<th>Name(Team Lead)</th>
									<th>Registration No.</th>
									<th>Name</th>
									<th>Registration No.</th>
									<th>Status</th>
								</tr>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Completed </td>
                                                                </tr> <% } %>
                                                    <% 
                                                        result = dataService.getMixDoublesDataPending(1);
                                                        result2 = dataService.getMixDoublesDataPending(0);
                                                    %>
                                                                <% while(result.next() && result2.next()){ %>
                                                                <tr>
                                                                    <td> <%= result.getString("name") %> </td>
                                                                    <td> <%= result.getString("registration_no") %> </td>
                                                                    <td> <%= result2.getString("name") %> </td>
                                                                    <td> <%= result2.getString("registration_no2") %> </td>
                                                                    <td> Pending </td>
                                                                </tr> <% } %>
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
