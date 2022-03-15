<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Team</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<div class="card">
		<div class="card-body">
			<h4 class="card-title">Table with contextual classes</h4>
			<p class="card-description">
				Add class
				<code>.table-{color}</code>
			</p>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Title</th>
						<th>Developer Name</th>
						<th>Email</th>
						<th>Role</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody border="1">
					<c:forEach items="${team}" var="t">
						<tr>

							<td>${t.projecttitle}</td>
							<td>${t.firstName}</td>
							<td>${t.email}</td>
							<td>${t.roleName}</td>
							<td><c:if test="${t.active == 1 }">
									Active
								</c:if> <c:if test="${t.active == 0 }">
									InActive
									</c:if>
							</td>
							<td>
							<c:if test="${t.active == 1 }">
									<a
										href="removemember?projectId=${t.projectId}&userId=${t.userId}">Revoke</a>
								</c:if> 
								<c:if test="${t.active == 0 }">
									<a
										href="reassignmember?projectId=${t.projectId}&userId=${t.userId}">ReAssign</a>
								</c:if>
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>