<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Project</title>
<jsp:include page="AllCss.jsp"></jsp:include>

</head>
<body>
<div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Default form</h4>
                    <p class="card-description"> Basic form layout </p>
                    <form class="forms-sample" action="saveproject" method="post">
                    
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
                      <div class="form-group">
                        <label for="exampleInputUsername1">Start Date</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Technology" value="${project.startDate}" name="startDate"/>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputUsername1">End Date</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Technology" value="${project.endDate}" name="endDate"/>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputUsername1">Estimated Time</label>
                        <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Technology" value="${project.technology}" name="estimatedHours"/>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputUsername1">Status</label>
                        <select name="statusId" class="form-control">
                        <option>Select Status</option>
		 					<c:forEach items="${status}" var="s">
		 					<option value="${s.statusId}">${s.statusName}</option>		 			
		 					</c:forEach>
		 					
		 			</select>
                        </div>
		 			
                      </div>
                     <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>

</body>
</html>