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
<div class="card">

                  <div class="card-body">
                    <h4 class="card-title">Basic form elements</h4>
                    <p class="card-description"> Basic form elements </p>
                    <form class="forms-sample" action="saveteammembers" method="post">
                      <div class="form-group">
                        <label for="exampleInputName1">Project Title</label>
                        <input type="text" class="form-control" id="exampleInputName1" readonly="readonly"value="${project.projectTitle}">
                      </div>
                      <jsp:include page="AdminHeader.jsp"></jsp:include>
                  
                      <div class="form-group">
                        <label for="exampleInputEmail3">Technology</label>
                        <input type="text" class="form-control" id="exampleInputEmail3" readonly="readonly"value="${project.technology}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Start Date</label>
                        <input type="text" class="form-control" id="exampleInputPassword4" readonly="readonly"value="${project.startDate}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">End Date</label>
                        <input type="text" class="form-control" id="exampleInputPassword4" readonly="readonly" value="${project.endDate}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Select User</label>
                        <select name="userId" class="form-control" multiple="multiple">
                        <c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.email}</option>
						</c:forEach>
						
      						</select>
                        <!--  <input type="text" class="form-control" id="exampleInputPassword4" readonly="readonly" placeholder="Password">-->
                      </div>
                      <input type="hidden" name="projectId" value="${project.projectId}">
                      
                     <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                      <button class="btn btn-light" type="reset">Cancel</button>
                    </form>
                  </div>
                </div>
</body>
</html>