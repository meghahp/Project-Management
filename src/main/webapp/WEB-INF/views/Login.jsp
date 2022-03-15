<!DOCTYPE link PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login V9</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller img js-fullheight">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row flex-grow">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo">
								<h2 style="color: #B66DFF;">LOGIN HERE</h2>
							</div>
							<h4>Hello! let's get started</h4>
							<h6 class="font-weight-light">Sign in to continue.</h6>
							<form class="pt-3" method="POST" action="saveuser">
								<div class="form-group">
									<input type="email" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Username" name="email">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Password"
										name="password"> ${error}${msg}

								</div>
								<div class="mt-3">
									<button class="btn btn-gradient-primary btn-lg btn-block"
										type="submit">
										<i class="mdi mdi-account"></i> SIGN IN
									</button>
								</div>
								<div1
									class="my-2 d-flex justify-content-between align-items-center">
								<div class="form-check">
									<label class="form-check-label text-muted"> <input
										type="checkbox" class="form-check-input"> Keep me
										signed in <i class="input-helper"></i></label>
								</div>
								<a href="#" class="auth-link text-black">Forgot password?</a>
						</div>

						<div class="text-center mt-4 font-weight-light">
							Don't have an account? <a href="newuser"
								class="text-primary">Create</a>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- content-wrapper ends -->
	</div>
	<!-- page-body-wrapper ends -->
	<!-- container-scroller -->
	<!-- plugins:js -->
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	
</body>
</html>