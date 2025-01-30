<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>

	<!-- header 시작 -->
	<nav class="navbar">
		<ul class="navbar_title">
			<!-- <li><i class="fa-brands fa-docker fa-beat"></i></li> -->
			<a href="${path}/main.do"><img
				src="${path}/resources/images/main/logo.png" alt="새로운 아이콘"
				style="width: 50px; height: auto;"></a>
		</ul>

		<ul class="navbar_menu">
			
			<div class="dropdown">
				<button class="dropdown-button"><a href="${path}/main.do">HOME</a></button>
				<div class="dropdown-menu">
					<a href="https://www.lego.com/en-us/history">레고 스토리</a>
					<a href="https://www.youtube.com/@LEGO">YouTube</a>
				</div>
			</div>
			
			<li><a href="https://www.lego.com/ko-kr/categories/new-sets-and-products">PRODUCTS</a></li>
			<li><a href="https://www.lego.com/ko-kr/service">Q&A</a></li>
			<div class="search-container">
				<input style="width: 600px; height: auto;"
					text" placeholder="Welcome To LEGO Worlds" aria-label="Search"
					class="search-input" />
				<button type="submit" class="search-button">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</div>
		</ul>

		<ul class="navbar_icons">
			<li><a href="https://x.com/lego_group"><i
					class="fa-brands fa-twitter"></i></a></li>
			<li><a href="https://www.facebook.com/LEGOKorea.official/"><i
					class="fa-brands fa-facebook"></i></a></li>
			<li><a href="${path}/login.do">로그인</a></li>
			<li><a href="${path}/join.do"><i
					class="fa-solid fa-user-plus"></i></a></li>
			<li><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></li>
			<li><a href="${path}/modifyMember.do"><i
					class="fa-solid fa-user"></i></a></li>
		</ul>

		<!-- 반응형 웹 - (1). 햄버거 아이콘 -->
		<a href="#" class="navbar_toggleBtn"> <!-- <i class="fa-solid fa-bars"></i> -->
			<!--	<i class="fa-solid fa-burger"></i>  햄버거 아이콘 --> <i
			class="fa-solid fa-bars fa-beat"></i>
		<!-- 햄버거 아이콘 -->
		</a>
	</nav>
	<!-- header 끝 -->
</body>
</html>