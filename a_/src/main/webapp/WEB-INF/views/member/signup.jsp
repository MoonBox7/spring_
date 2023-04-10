<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>

	<!-- <Label htmlFor="id" text="아이디" />
        <Input type="text" id="id" placeholder="아이디" required={true} value={id} onChange={onChange}
        action="#" th:action="@{/signup}" th:object="${memberDTO}" method="post"
        /> -->
<!--border: 1px solid black; 테두리넣기 -->
<style>
label {
	display: block;
	margin-top: 0.5rem;
	margin-bottom: 0.2rem;
}
input {
	border: none;
	border-radius: 0.3rem;
}
button {
	margin: 12px auto;
	display: block;
	border: none;
  	box-sizing: border-box;
 	max-width: 20rem;
 	width: 100%;
 	border-radius: 0.3rem;
}
.center {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh; /* 화면 전체 높이를 채우도록 설정 */
}
</style>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="center">
	<form action="${contextPath}/member/signup" method="post">
		<div
			style="display: flex; justify-content: center; align-items: center; ">
			<a href="${contextPath}"> 
				<img src="${contextPath}/resources/images/fox.png" alt="fox logo" style="width: 70%; height: 70%; margin-top: 20px; margin-right: 10px">
			</a>
		</div>
		<spring:hasBindErrors name="memberDTO"></spring:hasBindErrors>
		
		<!-- 아이디 -->
		<label for="memberId">아이디</label>
		<input type="text" name="memberId" placeholder="아이디" value="${memberDTO.memberId }"><!-- required 필수입력-->
		<form:errors path="memberDTO.memberId" element="div" class="input_errors"/> 
		
		<!-- 비밀번호 -->
		<label for="password">비밀번호</label>
		<input type="password" name="password" placeholder="비밀번호" value="${memberDTO.password }">
		<form:errors path="memberDTO.password" element="div" class="input_errors"/>
		
		<!-- 비밀번호 확인 -->
		<label for="confirmPassword">비밀번호 확인</label>	
		<input type="password" name="confirmPassword" placeholder="비밀번호 확인" value="${memberDTO.confirmPassword }">
		<form:errors path="memberDTO.confirmPassword" element="div" class="input_errors"/>
		
		<!-- 이름 -->
		<label for="memberName">이름</label>
		<input type="text" name="memberName" placeholder="이름" value="${memberDTO.memberName }">
		<form:errors path="memberDTO.memberName" element="div" class="input_errors"/>
		
		<!-- 이메일 -->
		<label for="email">이메일</label>
		<input type="email" name="email" placeholder="이메일" value="${memberDTO.email }">
		<form:errors path="memberDTO.email" element="div" class="input_errors"/>
		
		<!-- 전화번호 -->
		<label for="phoneNumber">전화번호</label>
		<input type="text" id="phoneNumber" placeholder="전화번호" value="${memberDTO.phoneNumber }">
		<form:errors path="memberDTO.phoneNumber" element="div" class="input_errors"/>
		
		<button>회원가입</button>
		
	</form>
</div>
</body>
</html>