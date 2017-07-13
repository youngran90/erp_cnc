<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/css/stylesheet.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<title>사원 정보 수정</title>
</head>
<body>
<form action="staff_updel" method="post" >
		<table>
			<thead>
				<tr>
					<th colspan="6">사원 정보 수정</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" id="staff_name" id="staff_name"></td>
					<td>성별</td>
					<td><input type="checkbox" name="gender" id="gender" value="남" >남 
					<input type="checkbox" name="gender" id="gender" value="여">여</td>
					<td>종교</td>
					<td><select name="religion_name">
							<option value=""></option>
							<option value="기독교">기독교</option>
							<option value="천주교">천주교</option>
							<option value="불교">불교</option>
							<option value="이슬람">이슬람</option>
							<option value="무교">무교</option>
					</select></td>
				</tr>
				<tr>
					<td>학력</td>
					<td>
						<input type="checkbox" name="school_name" id="school_name" value="고졸">고졸 
						<input type="checkbox" name="school_name" id="school_name" value="전문대졸">전문대졸 
						<input type="checkbox" name="school_name" id="school_name" value="일반대졸">일반대졸
					</td>
					<td>기술</td>
					<td colspan="3"><input type="checkbox" name="skill"
						class="skill" value="Java">Java <input type="checkbox"
						name="skill" class="skill" value="JSP">JSP <input
						type="checkbox" name="skill" class="skill" value="ASP">ASP
						<input type="checkbox" name="skill" class="skill" value="PHP">PHP
						<input type="checkbox" name="skill" class="skill" value="Delphi">Delphi
					</td>
				</tr>
				<tr>
				
				<jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
				
					<td>졸업일</td>
					<td colspan="5">
					<!-- 졸업일 전 -->
					<select name="before_grade_year" id="before_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> 년 
					<select name="before_grade_month" id="before_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>월
					<select name="before_grade_day" id="before_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>일 ~
					<!-- 졸업일 후 -->
					<select name="after_grade_year" id="after_grade_year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}">${ye}</option>
							</c:forEach>
					</select> 년 
					<select name="after_grade_month" id="after_grade_month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>월
					<select name="after_grade_day" id="after_grade_day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>일
					
					</td>
				</tr>
			</tbody>
		</table>
	</form>
			<div id="bt_group" class="bt_group">
			<input type="button" id="search" value="검색"> 
			<input	type="button" id="search_all" onclick="search_all()" value="전부검색"> 
			<input	type="button" id="reset" value="초기화"> 
			<input	type="button" id="register" value="등록">
		</div>

</body>
</html>