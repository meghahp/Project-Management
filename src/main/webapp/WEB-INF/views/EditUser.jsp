<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<div class="col-md-6 grid-margin stretch-card">
<jsp:include page="AdminSideBar.jsp"></jsp:include>
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit User</h4>
               
                    <form class="forms-sample" action="updateuser" method="post">
                    
                      <div class="form-group">
                        <label for="exampleInputUsername1">Enter First Name</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Enter First Name" value="${user.firstName}" name="firstName"/>
                      </div>
                      
                      
                      <input type="hidden" value="${user.userId}" name="userId" />
                      <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>

</body>
</body>
</html>