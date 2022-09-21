<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메인css -->
<link href="css/index.css" rel="stylesheet">
<!-- jQuery  -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소불러오기 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
</head>
<body>
	<main>
		<nav>
			<ul>
				<!-- 로그인전 뛰울것 -->
				<li class="floatLeft"><label class="colorWhite fontsize" for="pagelogin">로그인</label></li>
				<!-- 로그인후 뛰울것 -->
				<li class="floatLeft"><label class="colorWhite fontsize" for="pagelogin">로그아웃</label></li>
				<li class="floatLeft"><a class="colorWhite fontsize" href="mypage.jsp">마이페이지</a></li>
				
				<li class="floatLeft"><a class="colorWhite fontsize" href="index.jsp">홈화면</a></li>
			</ul>	
		</nav>
		<form name="daum">
			<table class="jointable">
			  <colgroup>
				<col width="200" />
				<col width="500" />
			  </colgroup>
			  <tbody>
			  	<tr>
			  		<th colspan="2"><h1>회원가입</h1></th>
			  	</tr>
				<tr>
				  <th><label class="fontsize" for="id">I D</label></th>
				  <td>jsl2022</td>
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">성 명</label></th>
				  <td>박건일</td>
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">e-mail</label></th>
				  <td>jsl2022@naver.com</td>
				</tr>
				<tr>
				  <th><label class="fontsize2">주소</label></th>
				  <td>대전광역시 중구 계룡로 825 희영빌딩 5F,7F</td>
				</tr>	
				<tr>
				  <th class="fontsize2">연락처</th>
				  <td>010 - 1234 - 5678</td>
				</tr>
				<tr>
				  <th class="fontsize2">내식당</th>
				  <td>
				  	김밥천국<input type="button" value=" 식당 정보  " onclick="javascript:goView()"><br>
				  	GS25<input type="button" value=" 식당 정보  "><br>
				  	떡볶이집<input type="button" value=" 식당 정보  "><br>
				  </td>
				  
				</tr>
				<tr>
				  <td colspan="2" class="center">
				  	<input type="button" value=" 식당 등록  " onclick="javascript:goWrite()">
				  </td>
				</tr>
			  </tbody>
			</table>
		</form>
	</main>
</body>
<script>
/** 우편번호 찾기 */
function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=addr1]').val(data.address);
			$('[name=addr2]').val(data.buildingName);
		}
	}).open();
}
function goView(){
	alert("goView");
	location.href="view.jsp";
}
function goWrite(){
	alert("goWrite");
	location.href="write.jsp";
}
</script>
</html>