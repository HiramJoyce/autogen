package com.autogen.service;

import com.autogen.domain.Admin;

public interface AdminService {
	Admin login(String userName, String password);
}
