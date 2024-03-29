<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<jsp:include page="AllCss.jsp"></jsp:include>

</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo">
								<h2 style="color: #B66DFF;">SIGN UP</h2>
							</div>
							<h4>WELCOME</h4>
							<h6 class="font-weight-light">Please fill in this formto
								create an account</h6>
							<form class="pt-3" action="saveuser1" method="post">
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										id="exampleInputUsername1" placeholder="Username">
								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Email">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<!-- <div class="form-group">
									Gender:<select name="gender">
									<option>Male</option>
									<option>Female</option>
									</select>
								</div> -->
								
								<div class="form-group">
									Role:<select name="roleId">
		 		<option>Select Role</option>
		 		<c:forEach items="${roles}" var="r">
		 			<option value="${r.roleId}">${r.roleName}</option>
		
		 			
		 		</c:forEach>
		 	</select>

								</div>
								<div class="mb-4">
									<div class="form-check">
										<label class="form-check-label text-muted"> <input
											type="checkbox" class="form-check-input"> I agree to
											all Terms &amp; Conditions <i class="input-helper"></i></label>
									</div>
								</div>
								<div class="mt-3">
									<button class="btn btn-gradient-primary btn-lg btn-block"
										type="submit">
										<i class="mdi mdi-account"></i> SIGN UP
									</button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Already have an account? <a href="login.html"
										class="text-primary">Login</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="../../assets/js/off-canvas.js"></script>
	<script src="../../assets/js/hoverable-collapse.js"></script>
	<script src="../../assets/js/misc.js"></script>
	<!-- endinject -->
	

</body>
</html>