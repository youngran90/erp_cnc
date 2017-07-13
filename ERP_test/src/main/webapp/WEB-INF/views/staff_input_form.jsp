<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/css/stylesheet.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	
		
		function onlyNumber(obj) {
		    $(obj).keyup(function(){
		        $(this).val($(this).val().replace(/[^0-9]/g,""));
		         $(this).apend()
		    }); 
		}
		
		
	$(function(){
		
		
		 $('input[type="checkbox"][name="school_code"]').click(function(){
		        if ($(this).prop('checked')) {
		            $('input[type="checkbox"][name="school_code"]').prop('checked', false);
		            $(this).prop('checked', true);
		        }
		    });
		
		
		$("#register").on("click", function(){
			alert("in")
			var staff_name = $("#staff_name").val();
			
			var jumin_f = $("#jumin_f").val();
			var year = jumin_f.substring(0, 2);
			var month = jumin_f.substring(2, 4);
			var day = jumin_f.substring(4, 6);

			if(month > 12 || month <1 || day < 1 || day> 31 ){
		 		alert("생년월일을 확인해주세요");
				var jumin_f = $("#jumin_f").focuss();

			}
			var jumin_b = $("#jumin_b").val();
			
			var jumin_no = jumin_f + "-" + jumin_b;
			$("#jumin_no").val(jumin_no);
		
			var school_name = $("input[name=school_code]:checked").val();
		
			var skill_names =[];
			
			$("input[name=staff_skill_no]:checked").each(function(){
				skill_names.push($(this).val());
			});
	
			var before_grade_year =  $("#before_grade_year").val();
			var before_grade_month =  $("#before_grade_month").val();
			var before_grade_day =  $("#before_grade_day").val();
			
			var before_graduate_day = before_grade_year +"-" + before_grade_month + "-" + before_grade_day;
			
			var after_grade_year =  $("#after_grade_year").val();
			var after_grade_month =  $("#after_grade_month").val();
			var after_grade_day =  $("#after_grade_day").val();
			
			var after_graduate_day = after_grade_year +"-" + after_grade_month + "-" + after_grade_day;
			
			if(before_grade_year > after_grade_year ){
				alert("이전 날짜가 이후 날짜보다 큽니다");
				$("#before_grade_year").val("");
				$("#before_grade_month").val("");
				$("#before_grade_day").val("");
				$("#after_grade_year").val("");
				$("#after_grade_month").val("");
				$("#after_grade_day").val("");
			}else{
				$("#graduate_day").val(after_graduate_day);
			}
			
			if(staff_name == ''){
				alert("이름을 입력해주세요.");
				$("#staff_name").focus();
				return;
			}else if(jumin_f == '' || jumin_b == ''){
				alert("주민번호을 입력해주세요.");
				$("#jumin_f").focus();
				return;
			}else if($("input:checkbox[name=school_code]:checked").length < 1){
				alert("학력을 선택해주세요.");
			}else if($("input:checkbox[name=staff_skill_no]:checked").length < 1){
				alert("기술을 하나이상  선택해주세요.");
			}else{
				if (confirm("정말 저장하시겠습니까?") == true){    //확인
				document.getElementById('registerForm').submit();
				}else{   //취소
				    return false;
				}
			}

		});
	
		
	});



</script>
<title>사원 정보 등록</title>
</head>
<body>
	<form action="insert_staff" id="registerForm" name="registerForm"  method="post">
		<table>
			<thead>
				<tr>
					<th colspan="6">사원 정보 등록</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>이름</td>
					<td><input type="text" id="staff_name" name="staff_name" value="1"></td>
					<td>주민번호</td>
					<td>
					<input type="text" name="jumin_f" id="jumin_f" size="6" maxlength="6" onkeydown="onlyNumber(this)" value="1">-
					<input type="password" id="jumin_b" name="jumin_b" size="7" maxlength="7" onkeydown="onlyNumber(this)" value="1">
					<td>종교</td>
					<td><select name="religion_code">
							<option value=""></option>
							<option value="1" selected="selected">기독교</option>
							<option value="2">천주교</option>
							<option value="3">불교</option>
							<option value="4">이슬람</option>
							<option value="5">무교</option>
					</select></td>
				</tr>
				 <tr>
					<td>학력</td>
					<td><input type="checkbox" name="school_code" id="school_code" value="1" checked="checked">고졸 
						<input type="checkbox" name="school_code" id="school_code" value="2">전문대졸 
						<input type="checkbox" name="school_code" id="school_code" value="3">일반대졸</td>
					<td>기술</td>
					<td colspan="3">
						<input type="checkbox" name="staff_skill_no" id="staff_skill_no" class="chkclass" value="Java" checked="checked">Java 
						<input type="checkbox" name="staff_skill_no" id="staff_skill_no" class="chkclass" value="JSP">JSP 
						<input type="checkbox" name="staff_skill_no" id="staff_skill_no" class="chkclass" value="ASP">ASP
						<input type="checkbox" name="staff_skill_no" id="staff_skill_no" class="chkclass"  value="PHP">PHP
						<input type="checkbox" name="staff_skill_no" id="staff_skill_no"  class="chkclass" value="Delphi">Delphi
					</td>
				</tr>
				<tr>
				
					<td>졸업일</td>
					<td colspan="5">
					<jsp:useBean id="todayyear" class="java.util.Date"/>
					<fmt:formatDate value="${todayyear}" pattern="yyyy" var="todayYear"/>
					<!-- 졸업일 전 -->
					<select name="before_grade_year" id="before_grade_year">
							<option value=""></option>
							<c:forEach var="y" begin="1900" end="${todayYear}">
								<option value="${y}">${y}</option>
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
							<c:forEach var="y" begin="1900" end="${todayYear}">
								<option value="${y}">${y}</option>
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
					
					<input type="hidden" id="jumin_no" name="jumin_no" value="">
					<input type="hidden" id="graduate_day" name="graduate_day" value="">
					</td>
				</tr> 
			</tbody>
		</table>
		<div id="bt_group" class="bt_group">
			<input	type="button" id="reset" name="reset" value="초기화"> 
			<input	type="submit" id="register" name="register" value="등록">
		</div>
	</form>


</body>
</html>