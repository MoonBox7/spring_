<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="${contextPath }/resources/css/style1.css">
<script src="${contextPath }/resources/js/main.js"></script>
</head>
<body>

	<div class="container">
		<h3>제목창</h3>
		<div class="container d-flex justify-content-center">
			<nav aria-label="breadcrumb " class="first  d-md-flex">
				<ol class="breadcrumb indigo lighten-6 first-1 shadow-lg mb-5  ">
					<li class="breadcrumb-item "><a class="black-text active-2"
						href="#"><img id="home"
							src="https://img.icons8.com/ios-filled/50/000000/dog-house.png"
							class="mr-md-2 mr-1 mb-1 " width="22" height="19"><span>HOME</span></a><img
						class="ml-md-3 ml-1"></li>
					<li class="breadcrumb-item "><a class="black-text active-2"
						href="#"><span>Cooking</span></a><img class="ml-md-3 ml-1"></li>
					<li class="breadcrumb-item "><a class="black-text active-2  "
						href="#"><span>Baking</span></a><img class="ml-md-3 ml-1"></li>
					<li class="breadcrumb-item  mr-0 pr-0"><a
						class="black-text active-1 active-2" href="#"><span>Bread
								shape</span></a></li>
					<form class="d-flex">
						<input class="form-control ml-md-3 ml-1" type="search"
							placeholder="Search" aria-label="Search"> <a
							class="black-text active-2  " href="#"><span>Search</span></a>
					</form>
				</ol>
			</nav>
		</div>