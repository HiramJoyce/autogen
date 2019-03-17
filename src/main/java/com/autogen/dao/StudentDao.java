package com.autogen.dao;

import com.autogen.domain.Student;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentDao {

	Student selectStudentByUserName(String userName);

	int insertStudent(Student student);
}
