<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>

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
	<form action="${contextPath}/member/signin" method="post">
		<div style="display: flex; justify-content: center; align-items: center; ">
			<a href="${contextPath}"> 
				<img src="${contextPath}/resources/images/fox.png" alt="fox logo" style="width: 70%; height: 70%; margin-top: 20px; margin-right: 10px">
			</a>
		</div>
		<!-- 아이디 -->
		<label for="memberId">아이디</label> <input type="text" id="memberId"
			name="memberId" placeholder="아이디" required>
		<!-- 비밀번호 -->
		<label for="password">비밀번호</label> <input type="password"
			id="password" name="password" placeholder="비밀번호" required>

		<button type="submit">로그인</button>
		<a href="${contextPath }/member/signup">SignUp</a>
		<a href="#">FindId</a>
		<a href="#">FindPw</a>
	</form>
</div>

<!-- 
<div class="row">
	<div class="col-md-6 mx-auto p-0">
		<div class="card">
			<div class="login-box">
				<div class="login-snip">
					<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
						for="tab-1" class="tab">Login</label> <input id="tab-2"
						type="radio" name="tab" class="sign-up"><label for="tab-2"
						class="tab">Sign Up</label>
					<div class="login-space">
					<form action="${contextPath }/member/signin" method="post">
						<div class="login">
							<div class="group">
								<label for="user" class="label">Username</label> <input
									id="user" type="text" class="input"
									placeholder="Enter your username">
							</div>
							<div class="group">
								<label for="pass" class="label">Password</label> <input
									id="pass" type="password" class="input" data-type="password"
									placeholder="Enter your password">
							</div>
							<div class="group">
								<input id="check" type="checkbox" class="check" checked>
								<label for="check"><span class="icon"></span> Keep me
									Signed in</label>
							</div>
							<div class="group">
								<input type="submit" class="button" value="Sign In">
							</div>
							<div class="hr"></div>
							<div class="foot">
								<a href="#">Forgot Password?</a>
							</div>
						</div>
					</form>
						<div class="sign-up-form">
							<div class="group">
								<label for="user" class="label">Username</label> <input
									id="user" type="text" class="input"
									placeholder="Create your Username">
							</div>
							<div class="group">
								<label for="pass" class="label">Password</label> <input
									id="pass" type="password" class="input" data-type="password"
									placeholder="Create your password">
							</div>
							<div class="group">
								<label for="pass" class="label">Repeat Password</label> <input
									id="pass" type="password" class="input" data-type="password"
									placeholder="Repeat your password">
							</div>
							<div class="group">
								<label for="pass" class="label">Email Address</label> <input
									id="pass" type="text" class="input"
									placeholder="Enter your email address">
							</div>
							<div class="group">
								<input type="submit" class="button" value="Sign Up">
							</div>
							<div class="hr"></div>
							<div class="foot">
								<label for="tab-1">Already Member?</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

 -->
</body>
</html>