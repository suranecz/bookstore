<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>상품 등록 폼</title>
<style>
@fontface{
   font-family:NanumGothic;
   src:url(NanumGothic.ttf) format('truetype');
}
html,body{
   font-family:NanumGothic;
   width:100%; height:100%;
}
body{
   margin:0 auto;
   background:#4078c9;
}
#greenbox, #bluebox{
   background-color:white;
   width:400px;
   height:450px;
   position:absolute;
   left:50%; top:50%;
   z-index:3;
   transform:translate(-50%,-50%);
}

#greenbox.down .designbox, #greenbox.down .container{
   background-color:#eee;
}
.designbox{
   width:400px;
   height:450px;
   background-color:white;
   position:absolute;
   transform:skew(-4deg,-4deg);
}
.container{
   width:300px;
   height:350px;
   padding:50px;
   position:absolute;
   background-color:white;
}
.title1{
   color:#333;
   text-align:center;
}
.title3{
   color:#444;
   padding-bottom:30px;
   line-height:150%;
}
.input_wrap{
   padding:5px;
   background-color:white;
   border-radius:3px;
   margin-bottom:20px;
   box-shadow: 0px 0px 5px grey;
}
.login_btn{
   background-color:#8ab7d6;
   border:none;
   width:50px;
   height:50px;
   border-radius:50px;
   font-size:18px;
   display:block;
   margin:0 auto;
   color:white;

}
.login_btn:hover{
   animation:submitbtn 0.2s ease;
   background-color:#4078c9;
   cursor:pointer;
}
@keyframes submitbtn{
   0%{
      background-color:#8ab7d6;
   }
   100%{
      background-color:#4078c9;
   }
}
.please_joinus{
   margin-top:30px;
   text-align:center;
   color:#777;
   text-decoration:none;
}
.please_joinus:hover{
   color:#333;
   cursor:pointer;
}
input[type="text"],[type="password"]{
   border:none;
   width:100%;
}
#greenbox.show, #bluebox.show{
   animation:showblock 0.5s ease;
   z-index:6;
}
#greenbox.down{
   animation:downblock 0.5s ease;
   transform:translate(-55%,-55%);
}
.lv1{
  display:block;
}
.lv2{
  display:none;
}
@keyframes showblock{
0%{
   z-index:3;
}
100%{
   z-index:6;
}
}
@keyframes downblock{
0%{
   transform:translate(-50%,-50%);
}
100%{
   transform:translate(-55%,-55%);
}
}

</style>
<script>
function signin(){
   document.getElementById('greenbox').classList.remove('show');
   document.getElementById('bluebox').classList.remove('down');
   document.getElementById('bluebox').classList.add('show');
   document.getElementById('greenbox').classList.add('down');
}
function signup(){
  document.getElementById('bluebox').classList.remove('show');
  document.getElementById('greenbox').classList.remove('down');
  document.getElementById('greenbox').classList.add('show');
  document.getElementById('bluebox').classList.add('down');
  $("#input-info").html('회원가입을 위해서<br>아이디와 비밀번호를 알려주세요!<br>페이즈는 당신을 기억할것입니다');
  $(".lv1").css("display","block");
  $(".lv2").css("display","none");
}
var regButtons = function(){
	$("#loginBtn").bind('click',function(){
		var userId = $("#loginMemberId").val();
		var userPassword = $("#loginMemberPassword").val();
		console.log(userId);
		console.log(userPassword);
		$.ajax({
			url:"user/idCheck",
			data:{
				userId : userId,
				userPassword : userPassword
			},
			success:function(flag){
				console.log(flag);
			},
			complete:function(){
				sessionStorage.setItem('userId', userId);
				location.href="book/bookList";
			}
		})
	})
}

$(document).ready(function(){
	  regButtons();
	});
</script>
</head>
<body>
<div id="greenbox" class="show">
   <div class="designbox"></div>
   <div class="container">
         <div id="login-wrap">
            <div class="title1"><img src="./img/phased.png"/></div>
            <div class="title3">페이즈의 서비스를 이용하려면<br>
            로그인이 필요합니다!</div>
            <div class="input_wrap"><input type="text" id="loginMemberId" name="memberId" placeholder="아이디"/></div>
            <div class="input_wrap"><input type="text" id="loginMemberPassword" name="memberPassword" placeholder="패스워드"/></div>
            <button class="login_btn" id="loginBtn" >></button>
            <div class="please_joinus"onClick="signin()">아직 회원이 아니신가요?</div>
         </div>
   </div>
</div>

<div id="bluebox">
   <div class="designbox"></div>
   <div class="container">
         <div id="signin-wrap">
            <h1 class="title1">sign in</h1>
            <div id="input-info" class="title3">회원가입을 위해서<br>아이디와 비밀번호를 알려주세요!<br>
            페이즈는 당신을 기억할것입니다</div>
            <form id="signupform" method="post" action="regist_proc.jsp">
            <div class="input_wrap lv1"><input type="text" id="memberId" name="memberId" placeholder="아이디"/></div>
            <div class="input_wrap lv1"><input type="text" id="memberPassword" name="memberPassword" placeholder="패스워드"/></div>
            <div class="input_wrap lv2"><input type="text" id="memberNickname" name="memberNickname" placeholder="닉네임"/></div>
            <input class="login_btn lv1" type="button" value=">" onClick="idCheck()"/>
            <input class="login_btn lv2" type="button" value=">" onClick="signupSubmit()">
            </form>
            <div class="please_joinus"onClick="signup()">돌아가기</div>
         </div>
   </div>
</div>
</body>
<script>
function idCheck(){
  alert("id:"+$("input[name=memberId]").eq(1).val()+"pw:"+$("input[name=memberPassword]").eq(1).val());
  //아이디 비밀번호 검증 후 폼이 넘어갈 수 있도록 돕자!
  //아이디 비밀번호 검증은 아직 안되어있음.
  $(".lv1").css("display","none");
  $(".lv2").css("display","block");
  $("#input-info").text('사용할 유저 닉네임을 알려주세요');
}
function signupSubmit(){
  //실질적 서브밋 작업
  var userId = $("input[name=memberId]").eq(1).val();
  var userPassword = $("input[name=memberPassword]").eq(1).val();
  var userNickname = $("input[name=memberNickname]").val();

  $.ajax({
	  url:"user/joinUser",
	  data:{
		  userId : userId,
		  userPassword : userPassword,
		  userNickname : userNickname
	  },
	  success:function(){
		  alert("가입 완료");
	  }
  })
  
}
</script>
</html>
