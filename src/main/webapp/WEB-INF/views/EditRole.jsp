<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Role</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
		<jsp:include page="AdminHeader.jsp"></jsp:include>

<div class="col-md-6 grid-margin stretch-card">
                    <jsp:include page="AdminSideBar.jsp"></jsp:include>

                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit your Role</h4>
                    
                    <form class="forms-sample" action="updaterole" method="post">
                    
                      <div class="form-group">
                        <label for="exampleInputUsername1">Role Name</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Enter Role Name" value="${role.roleName}" name="roleName"/>
                      </div>
                      
                      <input type="hidden" value="${role.roleId}" name="roleId" />
                      <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                    
                    
                  </div>
                </div>
              </div>
          <jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>