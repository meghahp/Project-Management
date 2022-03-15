<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Project</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<div class="col-md-6 grid-margin stretch-card">
	<jsp:include page="AdminSideBar.jsp"></jsp:include>
	
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Default form</h4>
                    <p class="card-description"> Basic form layout </p>
                    <form class="forms-sample" action="updateproject" method="post">
                    
                      <div class="form-group">
                        <label for="exampleInputUsername1">Project Title</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Enter Project Title" value="${project.projectTitle}" name="projectTitle"/>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputUsername1">Description</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Description" value="${project.description}" name="description"/>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputUsername1">Technology</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Technology" value="${project.technology}" name="technology"/>
                      </div>
                      <input type="hidden" value="${project.projectId}" name="projectId" />
                      <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>

</body>
</html>