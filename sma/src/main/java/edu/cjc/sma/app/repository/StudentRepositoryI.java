package edu.cjc.sma.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.sma.app.model.Student;

@Repository
public interface StudentRepositoryI extends JpaRepository<Student, Integer> {
	
	public List<Student> findAllByBatchNumberAndBatchMode(String batchNumber,String batchMode);

}
