<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품 등록 폼</title>
<style>
	@font-face{
	   font-family:NanumGothic;
	   src:url(../font/NanumGothic.ttf) format('truetype');
	}
	html,body{
	   font-family:NanumGothic;
	   width:100%; height:100%;
	}
	a{
	   text-decoration:none;
	   color:#333;
	}
	body{
	   margin:0 auto;
	   background:#eee;
	}
	header{
	   background:white;
	   border-bottom:1px solid rgb(100,100,100,0.3);
	}
	.title1{
	   color:#333;
	   text-align:center;
	}
	.nav{
	   margin:0px; padding:0px;
	   display:flex;
	   flex-direction:row;
	   justify-content:center;
	}
	.navlist{
	   list-style:none;
	   width:150px;
	   text-align:center;
	}
	.navlist.focused a{
	   border-bottom:5px solid #4078c9;
	}
	.navlist a{
	   width:100px;
	   display:inline-block;
	   padding:10px;
	   border-bottom:5px solid #ddd;
	}
	#container{
	   width:1000px;
	   background-color:white;
	   margin:0 auto;
	}
  .my-info{
    width:860px;
    margin:0 auto;
    padding:20px;
  }
  #info-mod-wrap{
    margin:20px 0px;
    padding:20px 0px;
    text-align:center;
  }
  .mod-message{
    line-height:50px;
  }
  #info-mod-wrap input{
    line-height:130%;
  }
  .my-name{
    font-size:23px;
    font-weight:bold;
    line-height:100px;
  }
  .mod-btn{
    padding:5px 15px;
    border:1px solid #aaa;
    display:inline-block;
    margin-right:20px;
    cursor:pointer;
    background:white;
  }
	.order_wrap{
	   background-color:white;
	   border-bottom:1px solid #ddd;
	   padding:50px;
	}
	.order_table{
	   display:flex;
	   align-items: center;
	}
	.order_info{
	   width:80%;
	   line-height:180%;
	}
	.image_info{
	   width:20%;
	   display:flex;
	   justify-content: center;
	   align-items: center;
	}
	.list_label{
	   width:900px;
	   margin:0 auto;
	   font-size:18px;
	   font-weight:bold;
	   margin-bottom:10px;
	    padding-top:20px;
	    padding-bottom:5px;
	}
	.list_liner{
	   height:3px;
	   background:#ddd;
	}
	.total_amount{
	   padding-top:20px;
	   font-size:18px;
	   text-align:right;
	}
	.status_btn{
	   border:2px solid #aaa;
	   color:#aaa;
	   padding:3px 15px 3px 15px;
	   border-radius:30px;
	}
	.status_btn.onshipping{
	   border:2px solid #4078c9;
	   color:#4078c9;
	}
	.status_btn.delivered{
	   border:2px solid #555;
	   color:#555;
	}
</style>
<script type="text/javascript">
function msg(){
	var size=0;
	var msgbox=document.getElementById("msgbox");
	if(size==0){
		var msg="<div class='order_wrap'><div style='text-align:center; padding-top:100px; padding-bottom:100px;'>주문한 내역이 없습니다.</div></div>"
		msgbox.innerHTML=msg;
	}
}
function modInfo(action){
  if(action=='nickname'){
    $('#info-mod-wrap').html();
    //미완, 특히나 jquery import 후 작성할것
  }
  else if(action=='password'){
    $('#info-mod-wrap').html();
  }
}
</script>
</head>
<body onload="msg()">
   <header><div class="title1"><img src="../img/phased.png"/></div>
      <nav>
         <ul class="nav">
             <li class="navlist"><a href="bookList.jsp">책 보러가기</a></li>
            <li class="navlist focused"><a href="myPage.jsp">내정보관리</a></li>
            <li class="navlist"><a href="payment.jsp">주문하기</a></li>
         </ul>
      </nav>
   </header>
   <div id="container">
     <div>
       <div class="list_label">내 정보 보기<div class="list_liner"></div></div>
       <div class="my-info">
         <FONT class="my-name">페이즈어레이(fluxion95)</FONT>
         <div class="button-wrapper">
           <div class="mod-btn" onClick="modInfo('nickname')">닉네임 변경</div><div class="mod-btn" onClick="modInfo(password)">패스워드 변경</div>
         </div>
         <div id="info-mod-wrap">
           <!--이부분을 javascript 컨트롤-->
           <div class="mod-message">변경할 패스워드를 입력해 주세요.</div>
           <input type="text"/>
           <button class="mod-btn">패스워드 변경</button>
          <!--이부분을 javascript 컨트롤-->
         </div>
       </div>
     </div>
      <div class="list_label">주문 내역<div class="list_liner"></div></div>
      <div id="msgbox"></div>
      <div class="order_wrap">
         <div class="order_table">
            <div class="order_info">주문번호 ${order.orderId}<br>주문일 ${order.orderDate}<br>
            <span class="status_btn">배송전</span><br><br><FONT style="font-weight:bold; font-size:20px;">${mainName[labelNum]} 외 ${totalAmount[labelNum]}건</FONT></div>
            <div class="image_info"><img width="100px;" src="../img/preview_image.png" onerror="this.src='../img/preview_image.png'"/></div>
         </div>
         <div class="total_amount">총결제금액 <FONT style="font-size:30px; color:#4078c9; font-weight:500">${totalPrice }원</FONT></div>
      </div>

      <div class="order_wrap">
         <div class="order_table">
            <div class="order_info">주문번호 ${order.orderId}<br>주문일 ${order.orderDate}<br>
            <span class="status_btn onshipping">배송중</span><br><br><FONT style="font-weight:bold; font-size:20px;">${mainName[labelNum]} 외 ${totalAmount[labelNum]}건</FONT></div>
            <div class="image_info"><img width="100px;" src="../img/preview_image.png" onerror="this.src='../img/preview_image.png'"/></div>
         </div>
         <div class="total_amount">총결제금액 <FONT style="font-size:30px; color:#4078c9; font-weight:500">${totalPrice }원</FONT></div>
      </div>

      <div class="order_wrap">
         <div class="order_table">
            <div class="order_info">주문번호 ${order.orderId}<br>주문일 ${order.orderDate}<br>
            <span class="status_btn delivered">배송완료</span><br><br><FONT style="font-weight:bold; font-size:20px;">${mainName[labelNum]} 외 ${totalAmount[labelNum]}건</FONT></div>
            <div class="image_info"><img width="100px;" src="../img/preview_image.png" onerror="this.src='../img/preview_image.png'"/></div>
         </div>
         <div class="total_amount">총결제금액 <FONT style="font-size:30px; color:#4078c9; font-weight:500">${totalPrice }원</FONT></div>
      </div>

   </div>
</body>
</html>
