<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>

<h1>메인</h1>
<br>
<h5 class="h5-clock" id="h5-clock"></h5> 
<h1>The current time is : ${Date }</h1>
<a href="${contextPath }/member/signin">로그인</a>
<a href="${contextPath }/member/signup">회원가입</a>

<br><br>
<div>
	<p> - 로그인(로그아웃),회원가입</p>
	<p> - 오른쪽에 작은 달력</p>
	<p> - 검색창</p>
	<p> - 전체, 카테고리~~~~</p>
	<p> - </p>
	<p> - </p>
	<p> - </p>
</div>

<!--  ${contextPath}/resources/images/강아지.jpg -->

<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<div class="d-flex flex-row mb-3">
						<img src="https://i.imgur.com/ccMhxvC.png" width="50">
						<div class="d-flex flex-column ml-2">
							<span>Stripe</span><span class="text-black-50">Payment
								Services</span><span class="ratings"></span>
						</div>
					</div>
					<h6>Get more context on your users with stripe data inside our
						platform.</h6>
					<div class="d-flex justify-content-between install mt-3">
						<span>Installed 172 times</span><span class="text-primary">View&nbsp;<i
							class="fa fa-angle-right"></i></span>
					</div>
				</div>
				<img alt="" src="${contextPath}/resources/images/강아지.jpg" width="200" height="200">
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="card float-left"
		style="width: 70%; height: 12vw; overflow: hidden;">
		<div class="row ">

			<div class="col-sm-7">
				<div class="card-block">
					<!--           <h4 class="card-title">Small card</h4> -->
					<p>Wetgple text to build your own card.</p>
					<p>Change around the content for awsomenes</p>
					<a href="#" class="btn btn-primary btn-sm">Read More</a>
				</div>
			</div>

			<div class="col-sm-5">
				<img class="d-block w-100" src="https://picsum.photos/150?image=380"
					width="20vw" height="20vh" alt="">
			</div>
		</div>
	</div>
	<br> <br>
	<div class="container">
		<div class="card float-left"
			style="width: 70%; height: 20vw; overflow: hidden;">
			<div class="row ">

				<div class="col-sm-7">
					<div class="card-block">
						<div class="d-flex flex-row mb-3">
							<img src="https://i.imgur.com/ccMhxvC.png">
							<div class="d-flex flex-column ml-2">
								<span>Stripe</span><span class="text-black-50">Payment
									Services</span><span class="ratings"><i class="fa fa-star"></i><i
									class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i></span>
							</div>
						</div>
						<p>Wetgple text to build your own card sss s sssssssssssssss
							sssssssss sss s sssssss.</p>
						<p>Change around the content for awsomenes</p>
						<a href="#" class="btn btn-primary btn-sm">Read More</a>
					</div>
				</div>

				<div class="col-sm-5">
					<img class="d-block w-100"
						src="https://picsum.photos/150?image=380"
						style="width: 20vw; height: 20vw;alt="">
				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>