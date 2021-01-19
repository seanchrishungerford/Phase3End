package com.springbootbasics;

import java.util.List;

public interface TaskDao {

	void createTask(Task task);

	void deleteTask(String taskId);

	void updateTask(Task task);

	Task readTask(String taskId);

	List<Task> displayTasks();

}
