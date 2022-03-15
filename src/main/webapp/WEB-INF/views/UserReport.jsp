<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="AllCss.jsp"></jsp:include>
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
						</span> Dashboard
					</h3>
					<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
								<i
								class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
							</li>
						</ul>
					</nav>
				</div>
				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">

							<div class="card-body">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#exampleModal">Roles</button>
								<button class="btn" onclick="exportPdf()">Export</button>
								<h4 class="card-title">List User</h4>
								<div class="dataTables_wrapper dt-bootstrap4">

									<table id="listUser" class="table table-striped" border="1">

										<thead>
											<tr>
												<td>UserId</td>
												<td>FirstName</td>
												<td>Email</td>
	
												<td>RoleId</td>
												
											</tr>

										</thead>
										<tbody>
											<c:forEach items="${users}" var="u">
												<tr>
													<td>${u.userId}</td>
													<td>${u.firstName}</td>
													<td>${u.email}</td>
													
													<td>${u.roleName}</td>
													
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
						Project - Roles</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"> </span>
					</button>
				</div>
				<div class="modal-body">
					<form action="userreport" method="get">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Select Roles </label>
							<div class="col-sm-10">
								<select name="roleId" class="form-control">

									<c:forEach items="${role}" var="r">
										<option value="${r.roleId}">${r.roleName}</option>
									</c:forEach>

								</select>
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
	</div>
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script type="text/javascript" src="assets/js/html2pdf.js"></script>

	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/vendors/chart.js/Chart.min.js"></script>


	<script src="assets/js/jquery.cookie.js" type="text/javascript"></script>

	<script src="assets/js/hoverable-collapse.js"></script>

	<script src="assets/js/misc.js"></script>


	<script src="assets/js/dashboard.js"></script>

	<script src="assets/js/todolist.js"></script>


	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>

	<!-- End custom js for this page -->

	<script type="text/javascript">
		function exportPdf() {
			const element = document.getElementById('listUser');
			var opt = {
				margin : 1,
				filename : 'Report_user.pdf',
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


</body>
</html>