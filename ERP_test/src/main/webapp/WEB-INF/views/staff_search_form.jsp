<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/resources/css/stylesheet.css" rel="stylesheet">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

function gender(num){
	
}

$(function(){
	
	$("#register").on("click", function(){
	
		window.open("/staff_input_form", "", "width:900px; height:200px;");
		
	});
	
	
});

 function search_all(){
	 alert("전체검색");
	 location.href="/staff_all";
 }

 
 function search(){
	 alert("검색");
	 
	 var before_grade_year = $("#before_grade_year").val();
	 var before_grade_month = $("#before_grade_month").val();
	 var before_grade_day = $("#before_grade_day").val();
	 var before_graduate_day = $("#before_graduate_day").val(before_grade_year+"-"+before_grade_month+"-"+before_grade_day);

	  var after_grade_year = $("#after_grade_year").val();
	 var after_grade_month = $("#after_grade_month").val();
	 var after_grade_day = $("#after_grade_day").val();
	 var after_graduate_day = $("#after_graduate_day").val(after_grade_year+"-"+after_grade_month+"-"+after_grade_day);

     if(before_grade_year > after_grade_year){
    	 alert("이전일 날짜가 잘못입력되었습니다");
    	 return false;
     }else{
    	 document.getElementById('searchForm').submit();
     }
	 
 }
 
 function goEditDel(staff_no){
	 alert(staff_no);
	 location.href="/staff_updel_form?staff_no="+staff_no;
 }


</script>
<title>사원 정보 검색</title>
</head>
<body>
	<form action="search" class="erp_table" id="searchForm" name="searchForm" method="post">
		<table>
			<thead>
				<tr>
					<th colspan="6">사원 정보 검색</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" id="staff_name" name="staff_name"></td>
					<td>성별</td>
					<td><input type="checkbox" name="gender" id="gender" value="1" >남 
					<input type="checkbox" name="gender" id="gender" value="2">여</td>
					<td>종교</td>
					<td>
						<select name="religion_code" id="religion_code">
							<option value="0"></option>
							<option value="1">기독교</option>
							<option value="2">천주교</option>
							<option value="3">불교</option>
							<option value="4">이슬람</option>
							<option value="5">무교</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>학력</td>
					<td>
						<input type="checkbox" name="school_codes" id="school_codes" value="1">고졸 
						<input type="checkbox" name="school_codes" id="school_codes" value="2">전문대졸 
						<input type="checkbox" name="school_codes" id="school_codes" value="3">일반대졸
					</td>
					<td>기술</td>
					<td colspan="3">
						 <input type="checkbox" name="skill_codes" id="skill_codes" value="1">Java 
						<input type="checkbox" name="skill_codes" id="skill_codes" value="2">JSP 
						<input type="checkbox" name="skill_codes" id="skill_codes" value="3">ASP
						<input type="checkbox" name="skill_codes" id="skill_codes" value="4">PHP
						<input type="checkbox" name="skill_codes" id="skill_codes" value="5">Delphi
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
						 <input type="hidden" id="before_graduate_day" name="before_graduate_day" value="">
						<input type="hidden" id="after_graduate_day" name="after_graduate_day" value=""> 
					</td>
				</tr>
			</tbody>
		</table>
	</form>
			<div id="bt_group" class="bt_group">
			<input type="button" id="search" value="검색" onclick="search()"> 
			<input	type="button" id="search_all"  value="전부검색" onclick="search_all()"> 
			<input	type="button" id="reset" value="초기화"> 
			<input	type="button" id="register" value="등록">
		</div>

	
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>성별</th>
					<th>종교</th>
					<th>졸업일</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${list eq null}">
			<td colspan="6">	검색 결과가 없습니다.</td>
			</c:if>
			
			<c:if test="${list ne null}">
			<c:forEach var="list" items="${list}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${list.staff_name}</td>
					<td>
					<c:set var="jumin" value="${list.jumin_no}" ></c:set>
					<c:set var="gender" value = "${fn:substring(jumin, 7, 8)}" ></c:set>
					<c:choose>
					  <c:when test="${gender eq '1'}">남</c:when>
					  <c:when test="${gender eq '2'}">여</c:when>
					 <c:otherwise>no</c:otherwise>
					  </c:choose>
					</td>
					<td>${list.religion_name}</td>
					<td>${list.graduate_day}</td>
					<td>
						<button id="updel" name="updel" class="updel" onclick="goEditDel(${list.staff_no})">수정/삭제</button>
					</td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>




</body>
</html>