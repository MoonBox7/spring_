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

<div class="center">
	<form action="${contextPath }/member/signup" method="post">
		<!-- 아이디 -->
		<label for="memberId">아이디</label>
		<input type="text" id="memberId" placeholder="아이디" value="${memberDTO.memberId }" required="required">
		
		<!-- 비밀번호 -->
		<label for="password">비밀번호</label>
		<input type="password" id="password" placeholder="비밀번호" value="${memberDTO.password }" required="required">
	
		<!-- 비밀번호 확인 -->
		<label for="confirmPassword">비밀번호 확인</label>	
		<input type="password" id="confirmPassword" placeholder="비밀번호 확인" value="${memberDTO.confirmPassword }" required="required">
		
		<!-- 이름 -->
		<label for="memberName">이름</label>
		<input type="text" id="memberName" placeholder="이름" value="${memberDTO.memberName }" required="required">
		
		<!-- 이메일 -->
		<label for="email">이메일</label>
		<input type="email" id="email" placeholder="이메일" value="${memberDTO.email }" required="required">
		
		<!-- 전화번호 -->
		<label for="phoneNumber">전화번호</label>
		<input type="text" id="phoneNumber" placeholder="전화번호" value="${memberDTO.phoneNumber }" required="required">
		
		<button>회원가입</button>
	</form>
</div>
</body>
</html>