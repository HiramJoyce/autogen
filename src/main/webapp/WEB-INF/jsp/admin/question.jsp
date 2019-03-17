<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>QuestionPage</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
</head>
<body>
<div class="container" style="padding: 20px;">
    <a href="#" onclick="history.back()">返回</a>
    <h3>考题-${question.id}</h3>
    <div style="width: 500px; margin: auto;">
        <p>【
            <c:if test="${question.type==1}">单选</c:if>
            <c:if test="${question.type==2}">多选</c:if>
            <c:if test="${question.type==3}">判断</c:if>
            <c:if test="${question.type==4}">填空</c:if>
            <c:if test="${question.type==5}">问答</c:if>
            】${question.body}</p>
        <br>
        <c:if test="${question.type==1}">
            <c:if test="${question.optionNum>=1}">
                <div class="radio">
                    <label>
                        <input type="radio" name="option" id="optionA" value="A">A.${question.optionA}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=2}">
                <div class="radio">
                    <label>
                        <input type="radio" name="option" id="optionB" value="B">B.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=3}">
                <div class="radio">
                    <label>
                        <input type="radio" name="option" id="optionC" value="C">C.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=4}">
                <div class="radio">
                    <label>
                        <input type="radio" name="option" id="optionD" value="D">D.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum==5}">
                <div class="radio">
                    <label>
                        <input type="radio" name="option" id="optionE" value="E">E.${question.optionB}
                    </label>
                </div>
            </c:if>
        </c:if>
        <c:if test="${question.type==2}">
            <c:if test="${question.optionNum>=1}">
                <div class="radio">
                    <label>
                        <input type="checkbox" name="option" id="optionA" value="A">A.${question.optionA}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=2}">
                <div class="radio">
                    <label>
                        <input type="checkbox" name="option" id="optionB" value="B">B.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=3}">
                <div class="radio">
                    <label>
                        <input type="checkbox" name="option" id="optionC" value="C">C.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum>=4}">
                <div class="radio">
                    <label>
                        <input type="checkbox" name="option" id="optionD" value="D">D.${question.optionB}
                    </label>
                </div>
            </c:if>
            <c:if test="${question.optionNum==5}">
                <div class="radio">
                    <label>
                        <input type="checkbox" name="option" id="optionE" value="E">E.${question.optionB}
                    </label>
                </div>
            </c:if>
        </c:if>
        <c:if test="${question.type==3}">
            <div class="radio">
                <label>
                    <input type="radio" name="judge" value="true"> 正确
                </label>
                <label>
                    <input type="radio" name="judge" value="false"> 错误
                </label>
            </div>
        </c:if>
        <c:if test="${question.type==4}">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="filling" class="col-sm-2 control-label">填空</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="filling" name="filling">
                    </div>
                </div>
            </form>
        </c:if>
        <c:if test="${question.type==5}">
            <div class="form-group">
                <label for="essay">答案</label>
                <textarea class="form-control" id="essay" name="essay" rows="3"></textarea>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>