<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Password</title>
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
                  <h3>Change Your Password</h3>
                </div>
               
                <form class="pt-3" method="post" action="updatepassword">
                  <div class="form-group">
                    <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <input type="otp" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Enter Otp">
                  </div>
                  <div class="form-group">
                    <input type="confirmPassword" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="conformPassword">
                  </div>
                  <button class="btn btn-gradient-primary btn-lg btn-block"
										type="submit">
										<i class="mdi mdi-account"></i> Update Password
									</button>
									<br><br>
					<h5 class="font-weight-light">Otp is generated and sent to your email!!!</h5>
                  
                  
                  
                  
                  
                  
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