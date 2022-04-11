<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
                  <h3>Forgot Password?</h3>
                </div>
                
                <h6 class="font-weight-light">Enter your email address to reset your password.</h6>
                <form class="pt-3" method="post" action="forgetpassword">
                  <div class="form-group">
                    <input name="email" type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Enter Your Email">
                  </div>
                  
                  <button class="btn btn-gradient-primary btn-lg btn-block"
										type="submit">
										<i class="mdi mdi-account"></i> Reset Password
									</button>
                  
                  <div class="mb-2">
                    
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