<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<!-- <Label htmlFor="id" text="아이디" />
        <Input type="text" id="id" placeholder="아이디" required={true} value={id} onChange={onChange}
        action="#" th:action="@{/signup}" th:object="${memberDTO}" method="post"
        /> -->


<style>

</style>

<div class="center">
	<form action="${contextPath}/member/signup" method="post">
		<div class="image"
			style="display: flex; justify-content: center; align-items: center; ">
			<a href="${contextPath}"> <img
				src="${contextPath}/resources/images/fox.png" alt="fox logo"
				style="width: 70%; height: 70%; ">
			</a>
		</div>
		<!--<spring:hasBindErrors name="memberDTO"></spring:hasBindErrors>-->
		<div class="add">
			<!-- 아이디 -->
			<label for="memberId">아이디</label>
			<input type="text" name="memberId" id="memberId" placeholder="Id입력창입니당^^" required maxlength="10">
			<span class="idCheck" id="idCheck"></span>
			<!--<form:errors path="memberDTO.memberId" element="div" class="input_errors"/>-->
			
			<!-- 비밀번호 -->
			<label for="password">비밀번호</label>
			<input type="password" name="password" placeholder="Pw입력창입니당^^">
			<span class ="pwCheck"></span>
			
			<!-- 비밀번호 확인 -->
			<label for="confirmPassword">비밀번호 확인</label>	
			<input type="password" name="confirmPassword" placeholder="Pw입력창입니당^^">
			<span class ="pwCheck"></span>
			
			<!-- 이름 -->
			<label for="memberName">이름</label>
			<input type="text" name="memberName" placeholder="Name입력창입니당^^" maxlength="8" title="8자 까지 입력" required autofocus >
			<span class="point successNameChk">이름은 2자 이상 8자 이하로 설정해주시기 바랍니다.</span>
    		<input type="hidden" id="nameDoubleChk"/>
			
			<!-- 이메일 -->
			<label for="email">이메일</label>
			<input type="email" name="email" placeholder="Email입력창입니당^^">
			
			<!-- 전화번호 -->
			<label for="phoneNumber">전화번호</label>
			<input type="text" name="phoneNumber" placeholder="Phone입력창입니당^^" >
			<!--  <div class="check">
			<input type="button" value="인증번호 받기" id="randomnum">
			</div>
			<input type="text" name="phonecheck" id="phonecheck" placeholder="인증번호 입력" style="display: block; margin:0 auto;">
			<div class="check">
			<input type="button" value="인증번호 확인" id="randomnumcheck">
			<span class ="numselect"></span>
			</div>-->
			<button>회원가입</button>
		</div>
	</form>
</div>
</body>

<script>
// 아이디 중복 체크
$('#memberId').keyup(function(){
	let memberId = $('#memberId').val(); //id값이 "id"인 입력값의 값을 지정
	console.log(memberId);
	$.ajax({
		url : `${contextPath}/member/idCheck`, // Controller에서 요청받을 주소
		data : memberId,
		type : 'post', // post 방식으로 전달
		contentType : 'application/json',
		success : function(result){ // controller에서 넘어온 result값을 받는다
			var data = parseInt(result);
			console.log("성공? "+result);
			if(data == 1){ // result가 1일 경우 -> 이미 사용중인 아이디
				$('#idCheck').html('이미 사용중인 아이디입니다.').css('color', '#dc3545');
			}else if(memberId === ''){ // 초기화
				$('#idCheck').html('').css('color', '');
			}else{ // result가 0일 경우 -> 사용가능한 아이디
				$('#idCheck').html('사용할 수 있는 아이디입니다.').css('color', '#2fb380');
			}
		},
		error : function(){
			alert('아이디 중복 검사 서버요청실패');
		}
	})
})


</script>
</html>