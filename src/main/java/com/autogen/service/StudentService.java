package com.autogen.service;

import com.autogen.domain.Student;

public interface StudentService {
	Student login(String userName, String password);

	Student register(String userName, String password, String realName);
}
