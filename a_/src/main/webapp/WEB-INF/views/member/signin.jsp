<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>

<style>
input {
	
}
</style>

<div class="center">
	<form action="${contextPath}/member/signin" method="post">
		<div class="image"
			style="display: flex; justify-content: center; align-items: center;">
			<a href="${contextPath}"> <img
				src="${contextPath}/resources/images/fox.png" alt="fox logo"
				style="width: 70%; height: 70%;">
			</a>
		</div>
		<!-- 아이디 -->
		<label for="memberId" style="width: 50%; height: 70%;">아이디</label> <input
			type="text" id="memberId" name="memberId" placeholder="Id입력창입니당^^"
			required>
		<!-- 비밀번호 -->
		<label for="password">비밀번호</label> <input type="password"
			id="password" name="password" placeholder="Pw입력창입니당^^" required>
		<div class="box">
			<input type="checkbox" style="float: right: ;">
		</div>
		<button type="submit">로그인</button>
		<div class="move">
			<a href="${contextPath }/member/signup">SignUp</a> <a href="#">FindId</a>
			<a href="#">FindPw</a>
		</div>
	</form>
</div>

</body>
</html>