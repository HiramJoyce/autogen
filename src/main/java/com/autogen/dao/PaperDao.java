package com.autogen.dao;

import com.autogen.domain.Paper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaperDao {
	List<Paper> selectAllPapers();

    int deletePaperById(String id);

    int insertPaper(Paper Paper);

    Paper selectPaperById(String id);

    int updatePaper(Paper Paper);
}
