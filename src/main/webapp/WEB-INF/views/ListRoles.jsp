<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">
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
									<h4 class="card-title">Project Status</h4>
									<div class="dataTables_wrapper dt-bootstrap4">
										<table id="listRoles" class="table table-striped">
																			<thead>
																				<tr role="row">
																					<th>RoleId</th>
																					<th>RoleName</th>
																					<th>Action</th>
																				</tr>
																			</thead>
																			<tbody>


																				<c:forEach items="${roles}" var="role">
																					<tr>
																						<td>${role.roleId}</td>
																						<td>${role.roleName}</td>
																						<td><a href="deleterole/${role.roleId}">Delete</a>
																							| <a href="editrole?roleId=${role.roleId}">Edit</a>
																						</td>
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
							class="float-none float-sm-end mt-1 mt-sm-0 text-end">
							Free <a
							href="https://www.bootstrapdash.com/bootstrap-admin-template/"
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
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#listRoles').DataTable();
		});
	</script>
</body>
</html>