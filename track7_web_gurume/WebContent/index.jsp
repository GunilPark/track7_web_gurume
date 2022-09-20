<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/index.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/8e082fcf6a.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<!-- 세로 페이지 라디오 -->
	<input name="a" type="radio" id="page1" checked>
	<input name="a" type="radio" id="page2">
	<input name="a" type="radio" id="page3">
	<!-- 가로 페이지 라디오 -->
	<input name="a" type="checkbox" id="pagelogin">
	<!-- 로그인 페이지 라디오 -->
	<input name="a" type="radio" id="idlogin" checked>
	<input name="a" type="radio" id="idsearch">
	<input name="a" type="radio" id="pwsearch">
	
	
	<main>
		<nav>
			<ul>
				<!-- 로그인전 뛰울것 -->
				<li class="floatLeft"><label class="colorWhite fontsize" for="pagelogin">로그인</label></li>
				<!-- 로그인후 뛰울것 -->
				<li class="floatLeft"><label class="colorWhite fontsize" for="pagelogin">로그아웃</label></li>
				<li class="floatLeft"><a class="colorWhite fontsize" href="mypage.jsp">마이페이지</a></li>
				
				<li class="floatLeft"><a class="colorWhite fontsize" href="main.jsp">메인화면</a></li>
			</ul>	
		</nav>
		<ul class="move1 hidden2">
			<li><img src="img/background/page1.png"></li>
			<li><img src="img/background/page2.png"></li>
			<li><img src="img/background/page3.png"></li>
		</ul>
		<ul class="position1300 move2">
			<li>
				<form name="login">
				<table class="logintable">
					<colgroup>
						<col style="width:40%">
						<col style="width:60%">
					</colgroup>
					<!-- 로그인 -->
				<tbody class="login1">
					<tr class="center">
						<th colspan="2"><h1>로그인</h1></th>
					</tr>
					<tr>
						<th><h2>아이디</h2></th>
						<td><input class="fontsize" type="text" name="t_id"></td>
					</tr>
					<tr>
						<th><h2>비밀번호</h2></th>
						<td><input class="fontsize" type="password" name="t_pw"></td>
					</tr>
					<tr class="center">
						<th colspan="2"><a href="javascript:goLogin()"><img src="img/loginLogo/jsllogin.png"></a></th>
					</tr>
					<tr class="center">
						<th colspan="2">
							<label class="colorWhite fontsize" for="idsearch">ID 찾기</label>
							<label class="colorWhite fontsize" for="pwsearch">PW 찾기</label>
							<a class="colorWhite fontsize" href="join.jsp">회원가입</a>
						</th>
					</tr>
				</tbody>	
					<!--  -->
					<!-- 아이디 찾기 -->
				<tbody class="login2">
					<tr class="center">
						<th colspan="2"><h1>아이디 찾기</h1></th>
					</tr>
					<tr>
						<th><h2>이메일</h2></th>
						<td><input class="fontsize" type="email" name="t_pw"></td>
					</tr>
					<tr class="center">
						<th colspan="2"><a class="button" href="javascript:goSearch()"> 아이디 찾기 </a></th>
					</tr>
					<tr class="center">
						<th colspan="2">
							<label class="colorWhite fontsize" for="idlogin">로그인</label>
							<label class="colorWhite fontsize" for="pwsearch">PW 찾기</label>
							<a class="colorWhite fontsize" href="join.jsp">회원가입</a>
						</th>
					</tr>
				</tbody>
					<!--  -->
					<!-- 비번 찾기 -->
				<tbody class="login3">
					<tr class="center">
						<th colspan="2"><h1>비밀번호 찾기</h1></th>
					</tr>
					<tr>
						<th><h2>아이디</h2></th>
						<td><input class="fontsize" type="text" name="t_id"></td>
					</tr>
					<tr>
						<th><h2>이메일</h2></th>
						<td><input class="fontsize" type="email" name="t_pw"></td>
					</tr>
					<tr class="center">
						<th colspan="2"><a class="button" href="javascript:goSearch()"> 비밀번호 찾기 </a></th>
					</tr>
					<tr class="center">
						<th colspan="2">
							<label class="colorWhite fontsize" for="idl ogin">로그인</label>
							<label class="colorWhite fontsize" for="idsearch">ID 찾기</label>
							<a class="colorWhite fontsize" href="join.jsp">회원가입</a>
						</th>
					</tr>
				</tbody>	
					<!-- 외부 로그인 -->
				<tbody>
					<tr class="center">
						<th colspan="2"><a href=""><img src="img/loginLogo/naverLogin.png"></a></th>
					</tr>
					<tr class="center">
						<th colspan="2"><a href=""><img src="img/loginLogo/kakaoLogin.png"></a></th>
					</tr>
					<tr class="center">
						<th colspan="2"><a href=""><img src="img/loginLogo/googleLogin.png"></a></th>
					</tr>
					<tr class="center">
						<th colspan="2"><a href=""><img src="img/loginLogo/facebookLogin.png"></a></th>
					</tr>
				</tbody>	
				</table>
				</form>
			</li>
		</ul>
		
		<!-- 라벨 -->
		<div class="same1 hidden checkpos">
				<ul>
					<li><label for="page1"><img src="img/button/checked.png"></label></li>
					<li><label for="page2"><img src="img/button/unchecked.png"></label></li>
					<li><label for="page3"><img src="img/button/unchecked.png"></label></li>
				</ul>
		</div>
		<div class="same2 hidden checkpos">
				<ul>
					<li><label for="page1"><img src="img/button/unchecked.png"></label></li>
					<li><label for="page2"><img src="img/button/checked.png"></label></li>
					<li><label for="page3"><img src="img/button/unchecked.png"></label></li>
				</ul>
		</div>
		<div class="same3 hidden checkpos">
				<ul>
					<li><label for="page1"><img src="img/button/unchecked.png"></label></li>
					<li><label for="page2"><img src="img/button/unchecked.png"></label></li>
					<li><label for="page3"><img src="img/button/checked.png"></label></li>
				</ul>
		</div>
		<!-- -->
			
			
	</main>
	
</body>
</html>