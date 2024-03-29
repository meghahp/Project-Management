<script type="text/javascript">
function openproject()
{
	window.location="newproject"
	}
</script>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="assets/images/faces/face1.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">${user.firstName }</span>
                  <span class="text-secondary text-small">Project Manager</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="admindashboard">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link collapsed" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Lists</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-basic" style="">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="listroles"> Role</a></li>
                  <li class="nav-item"> <a class="nav-link" href="listproject"> Project</a></li>
                  <li class="nav-item"> <a class="nav-link" href="getallusers"> User</a></li>
                </ul>
              </div>
            </li>
            
            <li class="nav-item">
            
              <a class="nav-link" href="pages/forms/basic_elements.html">
                <span class="menu-title">Forms</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Tables</span>
                <i class="mdi mdi-table-large menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link collapsed" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title">Report</span>
                <i class="menu-arrow"></i>
                
              </a>
              <div class="collapse" id="general-pages" style="">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="projectreport?statusId=0"> Project </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/login.html"> Developer </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/register.html"> Task  </a></li>
                </ul>
              </div>
            </li>
            
            <li class="nav-item sidebar-actions">
              <span class="nav-link">
                <div class="border-bottom">
                  <h6 class="font-weight-normal mb-3">Projects</h6>
                </div>
                <div class="template-demo" action="newproject">
                <button class="btn btn-gradient-primary btn-rounded btn-fw" onclick="openproject()"> Add a project</button>
                </div>
                <div class="mt-4">
                  <div class="border-bottom">
                    
                  </div>
                  <ul class="gradient-bullet-list mt-4">
                    
                    
                  </ul>
                </div>
              </span>
            </li>
          </ul>
        </nav>