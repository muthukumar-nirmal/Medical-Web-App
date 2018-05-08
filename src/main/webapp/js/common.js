
function loadHome()
{
	hideAll();
	$("#home").show();
	removeActiveMenu();
	$("#openHome").addClass('active');
}

function loadPatients()
{
	hideAll();
	$("#patients").show();
	removeActiveMenu();
	$("#openPatients").addClass('active');
	loadDataTable('loadPatients');
}

function loadDoctors()
{
	hideAll();
	$("#doctors").show();
	removeActiveMenu();
	$("#openDoctors").addClass('active');
	loadDataTable('loadDoctors');
}

function loadStaff()
{
	hideAll();
	$("#staffs").show();
	removeActiveMenu();
	$("#openStaff").addClass('active');
	loadDataTable('loadStaffs');
}

function loadAppointments()
{
	hideAll();
	$("#appointments").show();
	removeActiveMenu();
	$("#openAppointments").addClass('active');
	loadDataTable('loadAppointments');
}

function loadDataTable(tableID)
{
	if(tableID == 'loadPatients')
	{
		$('#'+ tableID).DataTable({
			"bDestroy": true,
	        "bAutoWidth": true,  
	        "bFilter": true,
	        "bSort": true, 
	        "aaSorting": [[0]],         
	        "aoColumns": [
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": false }
	        ]   });
	}
	else if(tableID == 'loadDoctors')
	{
		$('#'+ tableID).DataTable({
			"bDestroy": true,
	        "bAutoWidth": true,  
	        "bFilter": true,
	        "bSort": true, 
	        "aaSorting": [[0]],         
	        "aoColumns": [
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": false }
	        ]   });		
	}
	else if(tableID == 'loadStaffs')
	{
		$('#'+ tableID).DataTable({
			"bDestroy": true,
	        "bAutoWidth": true,  
	        "bFilter": true,
	        "bSort": true, 
	        "aaSorting": [[0]],         
	        "aoColumns": [
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": false }
	        ]   });			
	}
	else if(tableID == 'loadAppointments')
	{
		$('#'+ tableID).DataTable({
			"bDestroy": true,
	        "bAutoWidth": true,  
	        "bFilter": true,
	        "bSort": true, 
	        "aaSorting": [[0]],         
	        "aoColumns": [
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": true },
	            { "bSortable": false }
	        ]   });				
	}
	else
	{
		console.log("There is no table");
	}
}

function hideAll()
{
	$("#patients").hide();
 	$("#doctors").hide();
 	$("#staffs").hide();
 	$("#appointments").hide();
 	$("#home").hide();
}

function removeActiveMenu()
{
	$("#openPatients").removeClass("active");	
 	$("#openDoctors").removeClass("active");	
 	$("#openStaff").removeClass("active");	
 	$("#openAppointments").removeClass("active");	
 	$("#openHome").removeClass("active");	
}
