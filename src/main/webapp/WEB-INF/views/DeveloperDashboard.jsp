<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Developer Dashboard</title>
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
		<jsp:include page="DeveloperHeader.jsp"></jsp:include>


		<!-- partial -->
		<div class="container-fluid page-body-wrapper pt-0">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="DeveloperSideBar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>
							</span> Developer Dashboard
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
						<div class="col-md-4 stretch-card grid-margin" style="padding-right:30px">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total Projects <i
											class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalProjects}</h2>
									<h6 class="card-text">Increased by 60%</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin" style="padding-right:30px">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total Developer <i
											class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalDeveloper}</h2>
									<h6 class="card-text">Decreased by 10%</h6>
								</div>
							</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card" style="padding-right:30px">
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
									<div class="clearfix">
										<h4 class="card-title float-left">Visit And Sales
											Statistics</h4>
										<div id="visit-sale-chart-legend"
											class="rounded-legend legend-horizontal legend-top-right float-right">
											<ul>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(218, 140, 255, 1), rgba(154, 85, 255, 1))"></span>CHN</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>USA</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>UK</li>
											</ul>
										</div>
									</div>
									<canvas id="visit-sale-chart"
										class="mt-4 chartjs-render-monitor"
										style="display: block; height: 298px; width: 596px;"
										width="745" height="372"></canvas>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card">
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
									<h4 class="card-title">Traffic Sources</h4>
									<canvas id="traffic-chart" width="488" height="243"
										style="display: block; height: 195px; width: 391px;"
										class="chartjs-render-monitor"></canvas>
									<div id="traffic-chart-legend"
										class="rounded-legend legend-vertical legend-bottom-left pt-4">
										<ul>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>Search
												Engines<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))"></span>Direct
												Click<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>Bookmarks
												Click<span class="float-right">40%</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Recent Tickets</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>Assignee</th>
													<th>Subject</th>
													<th>Status</th>
													<th>Last Update</th>
													<th>Tracking ID</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><img src="assets/images/faces/face1.jpg"
														class="me-2" alt="image"> David Grey</td>
													<td>Fund is not recieved</td>
													<td><label class="badge badge-gradient-success">DONE</label>
													</td>
													<td>Dec 5, 2017</td>
													<td>WD-12345</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face2.jpg"
														class="me-2" alt="image"> Stella Johnson</td>
													<td>High loading time</td>
													<td><label class="badge badge-gradient-warning">PROGRESS</label>
													</td>
													<td>Dec 12, 2017</td>
													<td>WD-12346</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face3.jpg"
														class="me-2" alt="image"> Marina Michel</td>
													<td>Website down for one week</td>
													<td><label class="badge badge-gradient-info">ON
															HOLD</label></td>
													<td>Dec 16, 2017</td>
													<td>WD-12347</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face4.jpg"
														class="me-2" alt="image"> John Doe</td>
													<td>Loosing control on server</td>
													<td><label class="badge badge-gradient-danger">REJECTED</label>
													</td>
													<td>Dec 3, 2017</td>
													<td>WD-12348</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin stretch-card">
							<div class="card"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Project Status</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Due Date</th>
													<th>Progress</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Herman Beck</td>
													<td>May 15, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-success"
																role="progressbar" style="width: 25%" aria-valuenow="25"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Messsy Adam</td>
													<td>Jul 01, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-danger"
																role="progressbar" style="width: 75%" aria-valuenow="75"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>John Richards</td>
													<td>Apr 12, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-warning"
																role="progressbar" style="width: 90%" aria-valuenow="90"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Peter Meggik</td>
													<td>May 15, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-primary"
																role="progressbar" style="width: 50%" aria-valuenow="50"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Edward</td>
													<td>May 03, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-danger"
																role="progressbar" style="width: 35%" aria-valuenow="35"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Ronald</td>
													<td>Jun 05, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-info"
																role="progressbar" style="width: 65%" aria-valuenow="65"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card"></div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div class="container-fluid d-flex justify-content-between">
						<span
							class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright
							� bootstrapdash.com 2021</span> <span
							class="float-none float-sm-end mt-1 mt-sm-0 text-end">
							Free <a
							href="https://www.bootstrapdash.com/bootstrap-admin-template/"
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

</body>
</html>