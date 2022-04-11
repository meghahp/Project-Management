<%@page import="com.bean.ProjectBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<!-- <div class="container-scroller">
		<div class="row p-0 m-0 proBanner d-flex" id="proBanner">
			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
				</div>
			</div>
		</div> -->
	<!-- partial:partials/_navbar.html -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper pt-0">
		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="AdminSideBar.jsp"></jsp:include>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">
						<span class="page-title-icon bg-gradient-primary text-white me-2">
							<i class="mdi mdi-home"></i>
						</span> Admin Dashboard
					</h3>
					<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
								<i
								class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
							</li>
						</ul>
					</nav>
				</div>
				<div class="row">
					<div class="col-md-4 stretch-card grid-margin"
						style="padding-right: 30px">
						<div class="card bg-gradient-danger card-img-holder text-white">
							<div class="card-body">
								<img src="assets/images/dashboard/circle.svg"
									class="card-img-absolute" alt="circle-image">
								<h4 class="font-weight-normal mb-3">
									Total Projects <i
										class="mdi mdi-chart-line mdi-24px float-right"></i>
								</h4>
								<h2 class="mb-5">${projects}</h2>
								<h6 class="card-text">Increased by 60%</h6>
							</div>
						</div>
					</div>
					<div class="col-md-4 stretch-card grid-margin"
						style="padding-right: 30px">
						<div class="card bg-gradient-info card-img-holder text-white">
							<div class="card-body">
								<img src="assets/images/dashboard/circle.svg"
									class="card-img-absolute" alt="circle-image">
								<h4 class="font-weight-normal mb-3">
									Total Developers <i
										class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
								</h4>
								<h2 class="mb-5">${totalDeveloper}</h2>
								<h6 class="card-text">Decreased by 10%</h6>
							</div>
						</div>
					</div>
					<div class="col-md-4 stretch-card grid-margin">
						<div class="card bg-gradient-success card-img-holder text-white">
							<div class="card-body">
								<img src="assets/images/dashboard/circle.svg"
									class="card-img-absolute" alt="circle-image">
								<h4 class="font-weight-normal mb-3">
									Total Project Managers <i
										class="mdi mdi-diamond mdi-24px float-right"></i>
								</h4>
								<h2 class="mb-5">${totalProjectManager}</h2>
								<h6 class="card-text">Increased by 5%</h6>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<h4 class="card-title">Bar chart</h4>
								<canvas id="barChart" width="617" height="308"
									class="chartjs-render-monitor"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								
								<canvas id="doughnutChart"
									style="height: 247px; display: block; width: 494px;"
									width="617" height="308" class="chartjs-render-monitor"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			<footer class="footer">
				<div class="container-fluid d-flex justify-content-between">
					<span
						class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright
						© bootstrapdash.com 2021</span> <span
						class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Free
						<a href="https://www.bootstrapdash.com/bootstrap-admin-template/"
						target="_blank">Bootstrap admin template</a> from
						Bootstrapdash.com
					</span>
				</div>
			</footer>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->

	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->
	<!-- 	<script type="text/javascript" src="assets/js/chart.js"></script>
 -->
	<%
	List<ProjectBean> projects = (List<ProjectBean>) request.getAttribute("projects1");
	%>

	<script>
	$(function () {
		  /* ChartJS
		   * -------
		   * Data and config for chartjs
		   */
		  'use strict';
		  var data = {
		    labels: [
		    	
		    		<%for (ProjectBean p : projects) {%>
		    			'<%=p.getProjectTitle()%>',
		    		<%}%>
		    	],
		    datasets: [{
		      label: 'Astimated Hours',
		      data: [
		    		<%for (ProjectBean p : projects) {%>
	    			'<%=p.getEstimatedHours()%>',
	    			<%}%>
		      ],
		      backgroundColor: [
		        'rgba(255, 99, 132, 0.2)',
		        'rgba(54, 162, 235, 0.2)',
		        'rgba(255, 206, 86, 0.2)',
		        'rgba(75, 192, 192, 0.2)',
		        'rgba(153, 102, 255, 0.2)',
		        'rgba(255, 159, 64, 0.2)'
		      ],
		      borderColor: [
		        'rgba(255,99,132,1)',
		        'rgba(54, 162, 235, 1)',
		        'rgba(255, 206, 86, 1)',
		        'rgba(75, 192, 192, 1)',
		        'rgba(153, 102, 255, 1)',
		        'rgba(255, 159, 64, 1)'
		      ],
		      borderWidth: 1,
		      fill: false
		    }]
		  };
		  
		  var options = {
		    scales: {
		      yAxes: [{
		        ticks: {
		          beginAtZero: true
		        }
		      }]
		    },
		    legend: {
		      display: false
		    },
		    elements: {
		      point: {
		        radius: 0 	
		      }
		    }

		  };
	   // Get context with jQuery - using jQuery's .get() method.
		  if ($("#barChart").length) {
		    var barChartCanvas = $("#barChart").get(0).getContext("2d");
		    // This will get the first returned node in the jQuery collection.
		    var barChart = new Chart(barChartCanvas, {
		      type: 'bar',
		      data: data,
		      options: options
		    });
		  }
		  if ($("#doughnutChart").length) {
			    var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
			    var doughnutChart = new Chart(doughnutChartCanvas, {
			      type: 'doughnut',
			      data: doughnutPieData,
			      options: doughnutPieOptions
			    });
			  }

		  if ($("#browserTrafficChart").length) {
			    var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
			    var doughnutChart = new Chart(doughnutChartCanvas, {
			      type: 'doughnut',
			      data: browserTrafficData,
			      options: doughnutPieOptions
			    });
			  }
		 

		});		 

	</script>

</body>
</html>