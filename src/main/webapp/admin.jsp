
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
			ArrayList<Doctor> doctors = (ArrayList<Doctor>)request.getAttribute("doctors");
			ArrayList<Patient> patients = (ArrayList<Patient>)request.getAttribute("patients");
			ArrayList<Appointment> appointments = (ArrayList<Appointment>)request.getAttribute("appointments");
			ArrayList<Staff> staffs = (ArrayList<Staff>)request.getAttribute("staffs");
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Dashboard - Central Medic Center</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">	
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/patient.css">
<link rel="stylesheet" href="css/lab.css"> 
<link rel="stylesheet" href="css/style.css"> 


</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container-fluid">
			<div class="col-sm-12" id="home">
				<div class="row">
					<div class="col-sm-3">
						<div class="card">
							<div class="cardImage">
								<img src="media/patient.png">
							</div>
							<div class="cardText"><%=patients.size() %> Patients</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card">
							<div class="cardImage">
								<img src="media/doctor.png" style="width:128px">
							</div>
							<div class="cardText"><%=doctors.size() %> Doctors</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card">
							<div class="cardImage">
								<img src="media/admin.png">
							</div>
							<div class="cardText"><%=staffs.size() %> Staff</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card">
							<div class="cardImage">
								<img src="media/appointment.png">
							</div>
							<div class="cardText"><%=appointments.size() %> Appointments</div>
						</div>
					</div>
				</div>
				<br>
				<div class="row text-center">
					<div class="col-sm-12">
						<div class="panel panel-primary">
							<div class="panel-heading">
								Last Login
							</div>
							<div class="panel-body">
								<%= session.getAttribute("LastAccess") %>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="patients" style="display: none;">
				<table class="table table-striped table-bordered" style="width:100%" id="loadPatients">
					<thead>
					  <tr>
					    <th>Name</th>
					    <th>Username</th>
					    <th>DOB</th>
					    <th>Gender</th>
					    <th>Address</th>
					    <th>Phone Number</th>
					    <th>Height</th>
					    <th>Weight</th>
					    <th>Blood Group</th>
					    <th>Action</th>
					  </tr>
					 </thead>
					 <tbody>
					  <% for(int i=0; i<patients.size(); i++){
						  Patient person = patients.get(i);
						  %>
					  <tr>
					    <td><%= person.getFirstName() %> <%= person.getLastName() %></td>
					    <td><%= person.getUserName() %></td>
					    <td><%= person.getStringDob() %></td>
					    <td><%= person.getGender() %></td>
					    <td><%= person.getAddress() %></td>
					    <td><%= person.getContactNumber() %></td>
					    <td><%= person.getHeight() %></td>
					    <td><%= person.getWeight() %></td>
					    <td><%= person.getBloodGroup() %></td>
					    <td><a href="#"> <span class="glyphicon glyphicon-edit"></span> </a><a href="#"> <span class="glyphicon glyphicon-trash"></span> </a></td>
					  </tr>
					  <%} %>
					 </tbody>
				</table>
			</div>
			<div class="col-sm-12" id="doctors" style="display: none;">
				<table class="table table-striped table-bordered" style="width:100%" id="loadDoctors">
					<thead>
					  <tr>
					    <th>Name</th>
					    <th>Username</th>
					    <th>DOB</th>
					    <th>Gender</th>
					    <th>Address</th>
					    <th>Phone Number</th>
					    <th>Degree</th>
					    <th>Specialization</th>
					    <th>Action</th>
					  </tr>
					 </thead>
					 <tbody>
					  <% for(int i=0; i<doctors.size(); i++){
						  Doctor person = doctors.get(i);
						  %>
					  <tr>
					    <td><%= person.getFirstName() %> <%= person.getLastName() %></td>
					    <td><%= person.getUserName() %></td>
					    <td><%= person.getStringDob() %></td>
					    <td><%= person.getGender() %></td>
					    <td><%= person.getAddress() %></td>
					    <td><%= person.getContactNumber() %></td>
					    <td><%= person.getDegree() %></td>
					    <td><%= person.getSpecialization() %></td>
					    <td><a href="#"> <span class="glyphicon glyphicon-edit"></span> </a><a href="#"> <span class="glyphicon glyphicon-trash"></span> </a></td>
					  </tr>
					  <%} %>
					 </tbody>
				</table>
			</div>
			<div class="col-sm-12" id="staffs" style="display: none;">
				<table class="table table-striped table-bordered" style="width:100%" id="loadStaffs">
					<thead>
					  <tr>
					    <th>Name</th>
					    <th>Username</th>
					    <th>DOB</th>
					    <th>Gender</th>
					    <th>Address</th>
					    <th>Phone Number</th>
					    <th>Designation</th>
					    <th>Action</th>
					  </tr>
					 </thead>
					 <tbody>
					  <% for(int i=0; i<staffs.size(); i++){
						  Staff person = staffs.get(i);
						  %>
					  <tr>
					    <td><%= person.getFirstName() %> <%= person.getLastName() %></td>
					    <td><%= person.getUserName() %></td>
					    <td><%= person.getStringDob() %></td>
					    <td><%= person.getGender() %></td>
					    <td><%= person.getAddress() %></td>
					    <td><%= person.getContactNumber() %></td>
					    <td>
					    	<% if(person.getUserType()==3){ %>
					    		Admin
					    	<%}else if(person.getUserType()==4){ %>
					    		Lab Person
					    	<%}else if(person.getUserType()==5){ %>
					    		Receptionist
					    	<%} %>	
					    </td>
					    <td><a href="#"> <span class="glyphicon glyphicon-edit"></span> </a><a href="#"> <span class="glyphicon glyphicon-trash"></span> </a></td>
					  </tr>
					  <%} %>
					 </tbody>
				</table>
			</div>
			<div class="col-sm-12" id="appointments" style="display: none;">
				<table class="table table-striped table-bordered" style="width:100%" id="loadAppointments">
					<thead>
					  <tr>
					    <th>Title</th>
					    <th>Doctor</th>
					    <th>Patient</th>
					    <th>Status</th>
					    <th>Pref Date</th>
					    <th>Allo Date</th>
					    <th>Create Date</th>
					    <th>Symptons</th>
					    <th>Disease</th>
					    <th>Action</th>					    
					  </tr>
					 </thead>
					 <tbody>
					  <% for(int i=0; i<appointments.size(); i++){
						  Appointment appointment = appointments.get(i);
						  %>
					  <tr>
					    <td><%= appointment.getTitle() %></td>
					    <% if( appointment.getDoctor() == null){ %>
					    <td>Not Allocated</td>
					    <%}else { %>
					    <td><%= appointment.getDoctor().getFirstName() %></td>
					    <%
					    }%>
					    
					    <td><%= appointment.getPatient().getFirstName() %></td>
					    <td>
					    	<% if(appointment.getIsClosed()==1){ %>
					    		Closed
					    	<%}else { %>
					    		In progress
					    	<%} %>	
					    </td>
					    <td><%= appointment.getStringPreferredDate() %></td>
					    <td><%= appointment.getStringAllocatedDate() %></td>
					    <td><%= appointment.getStringDateCreated() %></td>
					    <td><%= appointment.getSymptons() %></td>
					    <td><%= appointment.getDisease() %></td>
					    <td><a href="#"> <span class="glyphicon glyphicon-edit"></span> </a><a href="#"> <span class="glyphicon glyphicon-trash"></span> </a></td>
					  </tr>
					  <%} %>
					 </tbody>
				</table>
			</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
</body>
</html>
<%
		}
%>