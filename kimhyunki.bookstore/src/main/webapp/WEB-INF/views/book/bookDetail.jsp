<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	.booklist{
	   margin-top:30px;
	   height:450px;
	   box-shadow:0px 0px 5px grey;
	   display:flex;
	}
	.bookimg{
	   width:304px;
	   height:450px;
	}
	.book_info{
	   padding:50px;
	   flex-grow:1;
	   display:flex;
	   flex-direction:column;
		 width:596px;
	}
	.stock_name{
	   font-size:30px;
	   padding:20px;
	}
	.stock_content{
		padding:0px 0px;
		height:150px;
		overflow-y:scroll;
	}
	.amount-checker{
		display:flex;
		flex-direction: row;
		justify-content: flex-end;
	}
	.stock_price{
	   font-size:32px;
		 margin-left:20px;
	   color:#4078c9;
	}
	.amount_wrap{
		display:flex;
		align-items: flex-end;
	}
	.stock_amount{
	width:40px;
	border:none;
	text-align:center;
	font-size:1.2em;
	display:inline-block;
	}
	.stock_amount:focus{
		outline:none;
	}
	.quantity-wrapper{
		display:inline-block;
		line-height:25px;
		text-align:center;
		-ms-user-select: none;
   -moz-user-select: -moz-none;
   -khtml-user-select: none;
   -webkit-user-select: none;
   user-select: none;
	}
	#amount-wrapper{
		display:inline-block;
		line-height:25px;
		border:1px solid #ddd;
	}
	.quantity{
		display:inline-block;
		border:1px solid #ddd;
		margin-right:-1px;
		margin-left:-1px;
		width:25px;
		line-height:25px;
		background:#eee;
		cursor:pointer;
	}
	#review_content{
		width:980px;
		text-align:center;
		display:block;
		margin:0px auto;
		border:1px solid #aaa;
		height:80px;
		text-align:left;
		font-size:1.2em;
	}
	#review_content::-webkit-scrollbar{
		width:12px;
		background-color:#fafafa;
	}
	#review_content::-webkit-scrollbar-thumb{
		background-color:#4078c9;
		border-radius:10px;
	}
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button
{
  -webkit-appearance: none;
  margin: 0;
}
	.button_wrap{
	  display:flex;
	  flex-grow:1;
	  align-items: flex-end;
	  justify-content:flex-end;
	}
	.charge_btn{
	  border:2px solid #4078c9;
	  background-color:#4078c9;
	  color:white;
	  padding:10px;
	  padding-left:30px;
	  padding-right:30px;
	  border-radius:30px;
	  margin-right:20px;
	}
	.basket_btn{
	  border:2px solid #4078c9;
	  color:#4078c9;
	  font-size:1em;
	  background:white;
	  padding:10px;
	  padding-left:30px;
	  padding-right:30px;
	  border-radius:30px;
	}
	.buy_btn{
	  border:2px solid #4078c9;
	  color:white;
	  font-size:1em;
	  background:#4078c9;
	  padding:10px;
	  padding-left:30px;
	  padding-right:30px;
	  border-radius:30px;
		cursor:pointer;
	}
	.charge_btn:hover, .basket_btn:hover{
	  cursor:pointer;
	}
	.bookreview-wrap{
		padding-top:20px;
		padding-bottom:20px;
	}
	.list_label{
	   width:980px;
	   margin:0 auto;
	   font-size:18px;
	   font-weight:bold;
	   margin-bottom:10px;
	}
	.list_liner{
	   height:3px;
	   background:#aaa;
	}
.btn-wrap{
	display:flex;
	justify-content: flex-end;
}
	#review-submit{
		width:130px;
		text-align:center;
		background:#eee;
		border:1px solid #ddd;
		cursor:pointer;
		padding:5px 0px;
		border-radius:5px;
		margin:10px;
	}
	.review-wrapper{
		width:950px;
		border-top:1px solid #ddd;
		border-bottom:1px solid #ddd;
		margin:0px auto;
		margin-top:-1px;
		padding:20px 15px;
	}
	.review-author{
		font-weight:bold;
		line-height:150%;
		font-size:1.1em;
	}
	.review-bottom{
		display:flex;
		flex-direction: row;
		justify-content: flex-end;
	}
	.review-btn{
		padding:5px 20px;
		margin-right:10px;
		border:1px solid #ddd;
		cursor:pointer;
	}
	.starrate-wrap{
		display:flex;
		flex-direction:row;
		height:170px;
		padding:20px 0px;
		margin-bottom:30px;
	}
	.mean-starrate{
		width:30%;
		text-align:center;
		border-right:1px solid #ddd;
	}
	.my-starrate{
		width:70%;
		display:flex;
		flex-direction:column;
		align-items: center;
	}
	.star-wrapper{
		position:relative;
		width:400px;
		height:100px;
		justify-content: center;
	}
	.star-wrapper div{
		position:absolute;
		left:0px;
		width:400px;
		height:100px;
		background-repeat:no-repeat;
	}
	.star-wrapper div:first-child{
		background-image:url('../img/fivestar_grey.png');
		
	}
	.star-wrapper div:last-child{
		width:300px;
		background-image:url('../img/fivestar.png');
	}
	.starRange{
		width:400px;
		height: 100px;
		cursor: pointer;
		position: absolute;
		margin-top:20px;
		z-index: 20;
		opacity:0;
	}
	#submit-starrate{
		padding:5px 25px;
		border-radius:20px;
		color:white;
		background:#aaa;
		cursor:pointer;
	}
	#submit-starrate:hover{
		background:#fda50f;
	}

</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

var starRating=0;
function starValue(range){
	var starValue = (range.value/10)*400;
	starRating=range.value/2;
	if(starValue==360){
		starValue=354;
	}
	if(starValue==320){
		starValue=318;
	}
	if(starValue==280){
		starValue=277;
	}
	if(starValue==120){
		starValue=124;
	}
	if(starValue==80){
		starValue=82;
	}
	if(starValue==40){
		starValue=47;
	}
	$("#test").css('width',starValue+'px');
}

function cart(stock_id){
   var amount=document.getElementById("buy_amount").value
   ajaxURL='checkStockAmountProc.jsp?amount='+amount+'&stock_id='+stock_id;
   $.ajax({
      url:ajaxURL,
      dataType:'json',
      success:function(data){
         if(data.select==1){
            alert('장바구니에 추가하였습니다');
         }else if(data.select==-1){
            alert('재고가 없습니다');
         }else if(data.select==2){
        	 alert('이미 장바구니에 동일한 책이 존재합니다');
         }
      }
   })
}

function numberWithCommas() {
	
    var price = $("#hiddenBookPrice").val();
    var stringPrice=price+"";
    var len = stringPrice.length;
    var resultPrice='';
    
    if(stringPrice.length>=3 || stringPrice.length<7){
    	resultPrice = stringPrice.substr(0,len-3)+','+stringPrice.substr(len-3,len)+'원';
    	
    }
    if(stringPrice.length>=7){
    	resultPrice = stringPrice.substr(0,len-6)+','+stringPrice.substr(len-6,len-3)+','+stringPrice.substr(len-3,len)+'원';
    	
    }
    $(".stock_price").html(resultPrice);
}

function payment(stockId, stockPrice){
	var stockAmount=document.getElementById("buy_amount").value;
	location.href="directPayment.jsp?stockId="+stockId+"&stockPrice="+stockPrice+"&stockAmount="+stockAmount;
}
function changeAmount(num){
	if(Number($("#buy_amount").val())+num>0){
		$("#buy_amount").val(Number($("#buy_amount").val())+num);
	}
}

var regButtons = function(){
	$("#submit-starrate").on('click',function(){
		var bookNo = ${book.bookNo};
		var userId = '${userId}';
		
		$.ajax({
			url:"../rating/searchHistory",
			data:{
				bookNo : bookNo,
				userId : userId,
				rating : starRating
			},
			success:function(cnt){
				if(cnt>0){
					alert('이미 별점을 등록했습니다');
				}else{
					$.ajax({
						url:'../rating/setRating',
						data:{
							bookNo : bookNo,
							userId : userId,
							rating : starRating
						},
						success:function(){
							alert('별점 등록 완료');
						}
					})
				}
			}
		
		})
	})
};

$(document).ready(function(){
	regButtons();
	numberWithCommas();

});
</script>
</head>
<body>
   <input id="bookNo" type="hidden" value='${book.bookNo}'>
   <header><div class="title1"><img src="../img/phased.png" ></div>
      <nav>
         <ul class="nav">
            <li class="navlist focused"><a href="bookList.jsp">책 보러가기</a></li>
            <li class="navlist"><a href="myPage.jsp">내정보관리</a></li>
            <li class="navlist"><a href="payment.jsp">주문하기</a></li>
         </ul>
      </nav>
   </header>
   <div id="container">
   <form name="booklistForm" action="cart.jsp" method="post">
      <div class="booklist">
         <div class="bookimg"><img width="304" height="450" src="../img/preview_image.png" onerror="this.src='../img/preview_image.png'"></div>
         <div class="book_info">
            <div class="stock_name">${book.bookTitle}</div>
            <div class="stock_content">${book.bookIntro}</div>
				<div class="amount-checker">
					<div class="amount_wrap">구매수량&nbsp;<div class="quantity-wrapper">
					<div class="quantity" onClick="changeAmount(-1)">-</div><div id="amount-wrapper"><input class="stock_amount" type="number" name="buy_amount" id="buy_amount" min="1" step="1" value="1"></div><div class="quantity" onClick="changeAmount(1)">+</div></div></div>
            <input type="hidden" id="hiddenBookPrice" value=${book.bookPrice}>
            <div class="stock_price">${book.bookPrice}원</div>
				</div>
            <div class="button_wrap"><input class="buy_btn" type="button" onclick="payment()" value="구매하기">&nbsp;&nbsp;&nbsp;
            <input type="button" onclick="cart()" value="장바구니" class="basket_btn"/></div>

		 </div>
      </div>
      </form>
			<div class="bookreview-wrap">
				<div class="list_label">별점<div class="list_liner"></div></div>
				<div class="starrate-wrap">
					<div class="mean-starrate">
						<div style="font-size:18px; margin-top:10px;">이 책의 평점</div>
						<div style="font-size:30px; font-weight:bold; line-height:150%;">${bookRating}</div>
						<img width=80 src="../img/fivestar.png"/>
						<div>참여 ${voteNo}</div>
					</div>
					<div class="my-starrate">
						별점 등록하기
						<div class="star-wrapper">
							<div></div>
							<div id="test"></div>
						</div>
						<input class="starRange" onclick="starValue(this)" type="range" min="0" max="10">
						<div id="submit-starrate">등록</div>
					</div>
				</div>

				<div class="list_label">리뷰<div class="list_liner"></div></div>
				<textarea id="review_content" name="content"></textarea>
	 			<div class="btn-wrap"><div id="review-submit">리뷰 남기기</div></div>

				<c:forEach var="review" items="${review}">
				<div class="review-wrapper">
					<div class="review-author">${review.userNickName}(${review.userId})</div>
					${review.content}
					<div class="review-bottom">
						<div class="review-btn">수정</div><div class="review-btn">삭제</div>
					</div>
				</div>
				</c:forEach>
			</div>
   </div>
</body>
</html>
