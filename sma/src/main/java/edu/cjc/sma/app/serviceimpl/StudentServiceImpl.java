package edu.cjc.sma.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

}
