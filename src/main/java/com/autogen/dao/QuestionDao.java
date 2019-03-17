package com.autogen.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.autogen.domain.Question;

@Repository
public interface QuestionDao {
	List<Question> selectAllQuestions();

    int deleteQuestionById(int id);

    int insertQuestion(Question question);

    Question selectQuestionById(String id);

    int updateQuestion(Question question);

    List<Question> selectQuestionsByChapterSectionLevelType(@Param("chapter") String chapter, @Param("section") String section, @Param("level") List<String> level, @Param("type") int type);
}
