<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>재고현황</title>
<style>
	@font-face{
	   font-family:NanumGothic;
	   src:url(NanumGothic.ttf) format('truetype');
	}
	html,body{
	   font-family:NanumGothic;
	}
	a{
	   text-decoration:none;
	   color:#333;
	}
	body{
	   margin:0 auto;
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
	   height:100%;
	   margin:0 auto;
	}
	#mag-icon{
		background-image:url('logo/mag_icon.png');
		background-size: contain;
		display:inline-block;
		width:15px; height:15px;
		cursor:pointer;
	}
	.search-box{
		border:1px solid #333;
		border-radius:5px;
		width:230px;
		line-height:25px;
		background:white;
		margin-top:10px;
		padding:0px 10px;
	}
	.search-box input{
		border:none;
		width:160px;
	}
	.stock-box{
		margin-top:10px;
		border-top:1px solid #ddd;
		border-bottom:1px solid #ddd;
		padding:20px;
		display:flex;
	}
	.stock-content{
		padding:0px 30px;
		width:100%;
	}
	.stock-info{
		font-weight:normal;
		font-size:20px;
	}
	.stock-title{
		font-weight:bold;
		font-size:25px;
		line-height:170%;
	}
	.button{
	padding:10px 25px;
	border-radius:25px;
	text-align:center;
	align-self:flex-end;
	margin-left:10px;
	cursor:pointer;
	border:2px solid #4078c9;
	display:inline-block;
	}
	.blue{
		background:#4078c9;
		color:white;
	}
	.white{
		background:white;
		color:#4078c9;
	}
	.button-wrap{
		display:flex;
		justify-content: flex-end;
	}
	.stock-updatebox{
		border-bottom:1px solid #ddd;
		padding:30px;
		text-align:center;
	}
	.stock-updatebox input{
		line-height:120%;
		border-radius:5px;
		border:1px solid #aaa;
		width:130px;
		padding:5px;
	}
	.down-button{
		border:1px solid #ddd;
		color:#ddd;
		border-radius:50%;
		position:absolute;
		width:30px; height:30px;
		display:flex;
		justify-content: center;
		align-items: center;
		cursor:pointer;
	}
</style>
<script>
</script>
</head>
<body>
   <header><div class="title1"><img src="logo/phased.png"/></div>
      <nav>
         <ul class="nav">
            <li class="navlist"><a href="insertBook.jsp">책 등록하기</a></li>
            <li class="navlist"><a href="deliveryManage.jsp">주문배송확인</a></li>
            <li class="navlist focused"><a href="updateStock.jsp">재고현황</a></li>
         </ul>
      </nav>
   </header>
   <div id="container">
     <div class="search-box">도서명 <input type="text"><div id="mag-icon"></div></div>
		 <div class="stock-container">
			 <div class="stock-box">
				 <div><img width="100px" src="logo/preview_image.png"/></div>
				 <div class="stock-content">
					 <div class="stock-title">도서 제목
					 <div class="stock-info">현재수량 258개 / 가격 12,500원</div>
				 </div>
				 <div class="button-wrap">
					 <div class="blue button">재고 수정</div><div class="white button">재고 삭제</div>
				 </div>
				 </div>
			 </div>
			 <!--이 부분이 '재고 수정'시 자바스크립트로 인해 동적으로 생겨나야함-->
			 <div class="stock-updatebox">
				 <div class="down-button">&gt;</div>
				 재고수량
				 <input type="number"/>
				 /
				 가격
				 <input type="number"/>
				 <div class="white button">수정하기</div>
			 </div>
			 <!--이 부분이 '재고 수정'시 자바스크립트로 인해 동적으로 생겨나야함-->
	 		</div>
		 <div class="stock-box">
			 <div><img width="100px" src="logo/preview_image.png"/></div>
			 <div class="stock-content">
				 <div class="stock-title">도서 제목
				 <div class="stock-info">현재수량 258개 / 가격 12,500원</div>
			 </div>
			 <div class="button-wrap">
				 <div class="blue button">재고 수정</div><div class="white button">재고 삭제</div>
			 </div>
			 </div>
		 </div>
		 <div class="stock-box">
			 <div><img width="100px" src="logo/preview_image.png"/></div>
			 <div class="stock-content">
				 <div class="stock-title">도서 제목
				 <div class="stock-info">현재수량 258개 / 가격 12,500원</div>
			 </div>
			 <div class="button-wrap">
				 <div class="blue button">재고 수정</div><div class="white button">재고 삭제</div>
			 </div>
			 </div>
		 </div>
   </div>
</body>
</html>