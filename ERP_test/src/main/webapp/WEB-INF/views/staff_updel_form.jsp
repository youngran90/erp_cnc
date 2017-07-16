<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/css/stylesheet.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 $(function(){
	 var graduate_day = '${userErp.graduate_day}';
	 var year = graduate_day.substring(0, 4);
	 var month = graduate_day.substring(5, 7);
	 var day = graduate_day.substring(8, 10);
	 $("#year").val(year);
	 $("#month").val(month);
	 $("#day").val(day);
	 
	 var religion_code = '${userErp.religion_code}';
	 $("#religion_code").val(religion_code);
	 
	 var school_code = '${userErp.school_code}';
	 $("#school_code").prop("checked", "true");
	 
	 
	/*  var skillList = [];
	 skillList = '${skillList}';
	 alert(skillList.size());
	 for(var i =0; i<skillList.length; i++){
		 $("input[name=skill_codes][value=" + skillList[i].skill_code + "]").prop("checked", true);
	 }
	 */
	 
	 
 })
 
 function Delete(staff_no){
	 alert(staff_no);
	 
 }
</script>

<title>사원 정보 수정</title>
</head>
<body>
<form action="staff_updel" method="post" >
	<input type="hidden" name="staff_no" id="staff_no" value="${userErp.staff_no }">
		<table>
			<thead>
				<tr>
					<th colspan="6">사원 정보 수정</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" id="staff_name" id="staff_name" value="${userErp. staff_name }"></td>
					<td>성별</td>
					<td><input type="checkbox" name="gender" id="gender" value="남" >남 
					<input type="checkbox" name="gender" id="gender" value="여">여</td>
					<td>종교</td>
					<td><select name=religion_code id="religion_code">
							<option value=""></option>
							<option value="1">기독교</option>
							<option value="2">천주교</option>
							<option value="3">불교</option>
							<option value="4">이슬람</option>
							<option value="5">무교</option>
					</select></td>
				</tr>
				<tr>
					<td>학력</td>
					<td>
						<input type="checkbox" name="school_code" id="school_code" value="1">고졸 
						<input type="checkbox" name="school_code" id="school_code" value="2">전문대졸 
						<input type="checkbox" name="school_code" id="school_code" value="3">일반대졸
					</td>
					<td>기술</td>
					<td colspan="3">
						<input type="checkbox" name="skill_codes" id="skill_codes"  class="skill_codes"  value="1">Java 
						<input type="checkbox" name="skill_codes" id="skill_codes" class="skill_codes"  value="2">JSP 
						<input type="checkbox" name="skill_codes" id="skill_codes" class="skill_codes"  value="3">ASP
						<input type="checkbox" name="skill_codes" id="skill_codes" class="skill_codes"  value="4">PHP
						<input type="checkbox" name="skill_codes" id="skill_codes" class="skill_codes"  value="5">Delphi
					</td>
				</tr>
				<tr>
				
					<td>졸업일</td>
					<td colspan="5">
					  <%--<c:set var="graduate_day" value="${userErp.graduate_day }"></c:set>
					
					<input type="text" name="year" id="year" value="${fn:substring(graduate_day, 0, 4)}" >년
					
					<input type="text" name="month" id="month" value="${fn:substring(graduate_day, 5, 7)}" >월
					<input type="text" name="day" id="day" value="${fn:substring(graduate_day, 8, 10)}">일 --%>
					
					 <!-- 졸업일 전 -->
					 <jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
					<select name="year" id="year">
							<option value=""></option>
							<c:forEach var="ye" begin="1900" end="${todayYear}">
								<option value="${ye}"  >${ye}</option>
							</c:forEach>
					</select> 년 
					<select name="month" id="month">
							<option value=""></option>
							<c:forEach var="m" begin="1" end="12">
								<option value="${m}">${m}</option>
							</c:forEach>
					</select>월
					<select name="day" id="day">
						<option value=""></option>
							<c:forEach var="d" begin="1" end="31">
								<option value="${d}">${d}</option>
							</c:forEach>
					</select>일
					<%--
					
					 ~
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
					</select>일 --%>
					
					</td>
				</tr>
			</tbody>
		</table>
	</form>
			<div id="bt_group" class="bt_group">
			<!-- <input type="button" id="search" value="검색"> 
			<input	type="button" id="search_all" onclick="search_all()" value="전부검색"> 
			<input	type="button" id="reset" value="초기화"> 
			<input	type="button" id="register" value="등록"> -->
			<input	type="button" id="edit" onclick="update()" value="수정"> 
			<input	type="button" id="delete"  onclick="Delete(${userErp.staff_no })" value="삭제"> 
			
			
		</div>

</body>
</html>