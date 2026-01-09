package edu.cjc.sma.app.servicei;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentServiceI {
	
	public void saveStudentData(Student student);
	public List<Student> getAllData();
	public List<Student> getAllStudentByBatchMode(String batchNumber,String batchMode);
	public List<Student> deleteData(int studentId);
	public List<Student> onPaging(int pagenumber,int pagesize);
	public Student getSingleStudent(int studentId);
	public void updateStudentFees(int studentId,double ammount);
	public Student getSingleBatch(int studentId);
	public void updateBatch(int studentId,String batchNumber,String batchMode);
	

}
