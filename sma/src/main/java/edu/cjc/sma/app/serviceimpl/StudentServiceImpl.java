package edu.cjc.sma.app.serviceimpl;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.repository.StudentRepositoryI;
import edu.cjc.sma.app.servicei.StudentServiceI;

@Service
public class StudentServiceImpl implements StudentServiceI {
	
	@Autowired
	StudentRepositoryI sri;

	@Override
	public void saveStudentData(Student student) {
     
		sri.save(student);
		
	}

	@Override
	public List<Student> getAllData() {
		
		List<Student> list=sri.findAll();
		
		return list;
	}

	@Override
	public List<Student> getAllStudentByBatchMode(String batchNumber, String batchMode) {
		
		return sri.findAllByBatchNumberAndBatchMode(batchNumber, batchMode);
	}

	@Override
	public List<Student> deleteData(int studentId) {
		sri.deleteById(studentId);
		return sri.findAll();
	}

	@Override
	public List<Student> onPaging(int pagenumber,int pagesize) {
		
		
		
		return sri.findAll(PageRequest.of(pagenumber, pagesize)).getContent();
	}

	@Override
	public Student getSingleStudent(int studentId) {
		
		Student s=sri.findById(studentId).get();
		
		
		return s;
	}

	@Override
	public void updateStudentFees(int studentId, double ammount) {
		 Student student=sri.findById(studentId).get();
		 student.setFeesPaid(student.getFeesPaid()+ammount);
		 sri.save(student);
		
	}

	@Override
	public Student getSingleBatch(int studentId) {
		
		
		return sri.findById(studentId).get();
	}

	@Override
	public void updateBatch(int studentId, String batchNumber, String batchMode) {
		Student student=sri.findById(studentId).get();
		student.setBatchNumber(batchNumber);
		student.setBatchMode(batchMode);
		
		sri.save(student);
		
	}

}
