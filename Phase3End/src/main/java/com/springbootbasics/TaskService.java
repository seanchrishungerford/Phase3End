package com.springbootbasics;
 
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskService implements TaskDao {

    @Autowired
    private TaskRepository repository;

    public void createTask(long id, String taskName, String startDate, String endDate,
            String description, String severity) {
        Task task = new Task(id, taskName, startDate, endDate, description, severity, severity);
        repository.save(task);
    }

    
	@Override
    public void createTask(Task task) {
        createTask(task.getId(),task.getName(), task.getStartDate(), task.getEndDate(),
                task.getDescription(), task.getSeverity());
    }

    @Override
    public void deleteTask(String taskId) {
        deleteTask(Long.valueOf(taskId));
    }

    public void deleteTask(Long taskId) {
        repository.deleteById(taskId);
    }


	@Override
    public void updateTask(Task task) {
        if(repository.existsById(task.getId())) {
            repository.save(task);
        } else {
            //throw new TaskNotFoundException(task.getId());
        }
    }


	@Override
    public Task readTask(String taskId) {
        return readTask(Long.valueOf(taskId));
    }

    public Task readTask(Long taskId) {
        return repository.findById(taskId).get();
    }


	@Override
	public List<Task> displayTasks() {
		// TODO Auto-generated method stub
		return null;
	}


//	@Override
//    public List<Task> displayTasks() {
//        List<Task> tasks = repository.findAll();
//        return tasks;
//    }
}