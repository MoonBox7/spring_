<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>

<style>

.right {
	margin-left: 70%;
}
</style>

<div class="right">
	<h2>Welcome to my home</h2>
    <h5 class="h5-clock" id="h5-clock"></h5>
	<h3>The current time is</h3>
	<h3> : ${Date }</h3>
 </div>
<img src="${contextPath}/resources/images/fox1.png">

</body>
</html>