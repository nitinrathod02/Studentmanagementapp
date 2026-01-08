package edu.cjc.sma.app.servicei;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentServiceI {
	
	public void saveStudentData(Student student);
	public List<Student> getAllData();
	public List<Student> getAllStudentByBatchMode(String batchNumber,String batchMode);
	public List<Student> deleteData(int studentId);
	

}
