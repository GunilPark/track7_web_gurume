<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<li class="floatLeft"><a class="colorWhite fontsize" href="myInfo.jsp">마이페이지</a></li>
				
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
				  <td>
					<input class="fontsize2" name="t_id" maxlength="10" type="text" size="10" id="id" title="id입력하세요">
					<input type="button" id="check" value="ID중복검사" class="checkB fontsize2">
					<input type="hidden" id="checkValue" value="" name="t_idCheck">
					<span id="idReasult"></span>
				  </td>
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">성 명</label></th>
				  <td><input class="fontsize2" name="t_name"  maxlength="10"  type="text" size="8" id="nana"></td>
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">비빌번호</label></th>
				  <td><input class="fontsize2" name="t_pw"  maxlength="10" type="password" size="13"></td>		  
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">비밀번호확인</label></th>
				  <td><input class="fontsize2" name="t_pw_confirm"  maxlength="10" type="password" size="13"></td>
				</tr>
				<tr>
				  <th><label class="fontsize2" for="nana">e-mail</label></th>
				  <td><input class="fontsize2" name="t_e_mail"  maxlength="15"  type="text" size="15" id="mail"></td>
				</tr>
				<tr>
				  <th><label class="fontsize2">주소</label></th>
				  <td>
				  	<input type="text" name="zip" class="fontsize2" size="5" placeholder="우편 번호"/>
					<button type="button" class="fontsize2" onclick="openZipSearch()">우편번호 검색</button><br>
					<input type="text" name="addr1" class="fontsize2" placeholder="도로명 주소" readonly /><br>
					<input type="text" name="addr2" class="fontsize2" placeholder="상세주소" />
				 </td>
				</tr>	
				<tr>
				  <th class="fontsize2">연락처</th>
				  <td>
					<input class="fontsize2" name="t_tell_1" maxlength="3" type="text" size="2"> -
					<input class="fontsize2" name="t_tell_2" maxlength="4" type="text" size="3"> -
					<input class="fontsize2" name="t_tell_3" maxlength="4" type="text" size="3">
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
</script>
</html>