<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Report</title>
 <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">

 <link rel="stylesheet" href="assets/css/style.css">
 
 <link rel="stylesheet" href="assets/images/favicon.ico" />
 
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
  
 
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" crossorigin="anonymous">
  
 
 
</head>
<body>
	<!-- <div class="container-scroller">
		<div class="row p-0 m-0 proBanner d-flex" id="proBanner">
			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
				</div>
			</div>
		</div>
		<!-- partial:partials/_navbar.html -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper pt-0">
		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="AdminSideBar.jsp"></jsp:include>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">
						<span class="page-title-icon bg-gradient-primary text-white me-2">
							<i class="mdi mdi-home"></i>
						</span> All Projects
					</h3>
					<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							
						</ul>
					</nav>
				</div>

				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="card-header">
									<h5> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Status
</button>
										<button class="btn" onclick="exportPdf()">Export</button>
									</h5>
								</div>
								<div class="dataTables_wrapper dt-bootstrap4">
									<table id="listProject" class="table table-striped" border="1">
										<thead>
											<tr role="row">
												<td>Project Id</td>
												<td>Title</td>
												<td>Description</td>
												<td>Technology</td>
												<td>Start Date</td>
												<td>End Date</td>
												<td>Estimated hours</td>
												<td>Status Name</td>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${project}" var="p">
												<tr>
													<td>${p.projectId}</td>
													<td>${p.projectTitle}</td>
													<td>${p.description}</td>
													<td>${p.technology}</td>
													<td>${p.startDate}</td>
													<td>${p.endDate}</td>
													<td>${p.estimatedHours}</td>
													<td>${p.statusName}</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 grid-margin stretch-card"></div>
				</div>
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			<footer class="footer">
				<div class="container-fluid d-flex justify-content-between">
					<span
						class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright
						© bootstrapdash.com 2021</span> <span
						class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Free
						<a href="https://www.bootstrapdash.com/bootstrap-admin-template/"
						target="_blank">Bootstrap admin template</a> from
						Bootstrapdash.com
					</span>
				</div>
			</footer>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	
	
 
 
 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Report -
							Project - Status</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="projectreport">
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Select Status </label>
								<div class="col-sm-10">
									<select name="statusId" class="form-control">

										<c:forEach items="${status}" var="s">
											<option value="${s.statusId}">${s.statusName}</option>
										</c:forEach>

									</select>
								</div>
							</div>
							
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Generate</button>
					</div>
					</form>
				</div>
			</div>
		</div>


  
  
  

	<!-- container-scroller -->
	<!-- plugins:js -->
<!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 -->
 
 <script type="text/javascript" src="assets/js/html2pdf.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"  crossorigin="anonymous"></script>
  
	 <!-- <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"   crossorigin="anonymous"></script>
	  
	 <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"    crossorigin="anonymous"></script>
	   -->
 <jsp:include page="AllJs.jsp"></jsp:include>

  
 	<!-- End custom js for this page -->
	<script type="text/javascript">  
		$(document).ready(function() {
			$('#listProject').DataTable();
		});
		
		</script>
	<script type="text/javascript">
	function exportPdf() {
		const element = document.getElementById('listProject');
		var opt = {
			margin : 1,
			filename : 'Report.pdf',
			image : {
				type : 'jpeg',
				quality : 0.98
				
			},
			html2canvas : {
				scale : 1
				
			},
			jsPDF : {
				unit : 'in',
				format : 'letter',
				orientation : 'landscape'
			}
		};
		html2pdf().set(opt).from(element).save();
	}	
		</script>
	
<!-- 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    -->

</body>
</html>