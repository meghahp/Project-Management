package com.bean;

public class ProjectTaskBean {
	
		private int taskId;
		private int moduleId;
		private int projectId;
		private String title;
		private String priority;
		private String description;
		private int statusId;
		private int totalMinutes;
		private String statusName;
		
		public int getTaskId() {
			return taskId;
		}
		public void setTaskId(int taskId) {
			this.taskId = taskId;
		}
		public int getModuleId() {
			return moduleId;
		}
		public void setModuleId(int moduleId) {
			this.moduleId = moduleId;
		}
		public int getProjectId() {
			return projectId;
		}
		public void setProjectId(int projectId) {
			this.projectId = projectId;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getPriority() {
			return priority;
		}
		public void setPriority(String priority) {
			this.priority = priority;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public int getStatusId() {
			return statusId;
		}
		public void setStatusId(int statusId) {
			this.statusId = statusId;
		}
		public int getTotalMinutes() {
			return totalMinutes;
		}
		public void setTotalMinutes(int totalMinutes) {
			this.totalMinutes = totalMinutes;
		}
		public String getStatusName() {
			return statusName;
		}
		public void setStatusName(String statusName) {
			this.statusName = statusName;
		}
		

}
