<%@page import="com.nirmal.medapp.modal.Appointment"%>
<%@page import="com.nirmal.medapp.modal.Patient"%>
<%@page import="com.nirmal.medapp.modal.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.nirmal.medapp.modal.Staff"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  
		if(request.getAttribute("admin")==null || request.getAttribute("doctors")==null 
			|| request.getAttribute("patients")==null || request.getAttribute("appointments") == null
			|| request.getAttribute("staffs")==null){
			 response.sendRedirect("admin"); 
		}
		else{
			Staff admin = (Staff)request.getAttribute("admin");
	%>

<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="admin">Central Medic Center</a>
			</div>
			<ul class="nav navbar-nav">
		      <li class="active" id="openHome"><a onclick="loadHome()" title="Dashboard">Dashboard</a></li>
		      <li id="openPatients"><a onclick="loadPatients()" title="Patients">Patients</a></li>
		      <li id="openDoctors"><a onclick="loadDoctors()" title="Doctors">Doctors</a></li>
		      <li id="openStaff"><a onclick="loadStaff()" title="Staff">Staff</a></li>
		      <li id="openAppointments"><a onclick="loadAppointments()" title="Appointments">Appointments</a></li>
		    </ul>
			
			<div id="navbar" class="navbar-collapse collapse">
			 <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> 
                        <strong><span class="name"><%= admin.getFirstName() +" " + admin.getLastName() %></span></strong>
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="navbar-login">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <p class="text-center">
                                            <!-- <span class="glyphicon glyphicon-user icon-size"></span> -->
                                            <img class="profilePic icon-size" src="media/admin.png">
                                        </p>
                                    </div>
                                    <div class="col-lg-8">
								<img src="media/gender.png"><span class="details">
									<%= admin.getGender() +", " + admin.getAge() %></span><br> <img
									src="media/degree.png"><span class="degree"> Admin</span><br>
								<img src="media/Location.png"><span class="location">
									<%= admin.getAddress() %></span>
									<br />
                                        <p class="text-left">
                                            <a href="updateAdminProfile" class="btn btn-primary btn-block btn-sm">Edit Profile</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar-login navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="logout" class="btn btn-danger btn-block">Logout</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
            </div>
		</div>
	</nav>
	<%
		}
%>