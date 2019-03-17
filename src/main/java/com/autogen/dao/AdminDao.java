package com.autogen.dao;

import org.springframework.stereotype.Repository;

import com.autogen.domain.Admin;

@Repository
public interface AdminDao {

	Admin selectAdminByUserName(String userName);
}
