<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 

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
	   width:100%;
	   height:100%;
	   margin:0 auto;
	}
	#honor_of_fame{
	   background-color:#333;
	   padding:30px;
	}
	.best_seller_title{
	   text-align:center;
	   font-size:25px;
	   width:980px;
	   margin:0 auto;
	   padding:10px;
	   color:white;
	}
	.best_booklist{
	   width:1000px;
	   margin:0 auto;
	   display:flex;
	   flex-direction:row;
	   justify-content: space-around;
	}
	.best_bookitem{
	   display:flex;
	   flex-direction:column;
	   align-items: center;
	}
	.best_bookimg{
	   width:152px;
	}
	.best_bookimg:hover{
	   transition:0.5s;
	   box-shadow:0px 0px 7px white;
	}
	.book_container{
	   width:900px;
	   margin:0px auto;
	   padding:50px;
	}
	.booklist{
	   display:grid;
	   width:800px;
	   grid-template-columns:repeat(5,1fr);
	   margin:0 auto;
	}
	.list_label{
	   width:800px;
	   margin:0 auto;
	   font-size:18px;
	   font-weight:bold;
	   margin-bottom:10px;
	}
	.list_liner{
	   height:3px;
	   background:#ddd;
	}
	.bookitem{
	   display:flex;
	   flex-direction:column;
	   align-items: center;
	   padding-top:10px;
	   padding-bottom:10px;
	   width:100%;
	}
	.bookimg{
	   width:100px;
	}
	.bookimg:hover{
	   cursor:pointer;
	}
	.book_info{
	   padding:50px;
	}
	.best_stock_name{
	   font-size:18px;
	   color:white;
	}
	.stock_name{
	   font-size:15px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

function cart(stock_id){
   var amount=document.getElementById("buy_amount").value
   ajaxURL='checkStockAmountProc.jsp?amount='+amount+'&stock_id='+stock_id;
   $.ajax({
      url:ajaxURL,
      dataType:'json',
      success:function(data){
         if(data.select==1){
            alert('장바구니에 추가하였습니다');
         }else{
            alert('장바구니에 문제가있답니다...');
         }
      }
   })
}
</script>
</head>
<body>
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
	<div id="honor_of_fame">
	         <div class="best_seller_title">베스트셀러</div>

	            <div class="best_booklist">

	               <div class="best_bookitem">
	                  <div><img  class="best_bookimg" width="152px" height="auto" src="../img/preview_image.png"/></div>
	                     <div class="best_stock_name">베스트셀러이름1</div>
	               </div>
	               <div class="best_bookitem">
	                  <div><img class="best_bookimg" width="152px" src="../img/preview_image.png" /></div>
	                     <div class="best_stock_name">베스트셀러이름12</div>
	               </div>
	               <div class="best_bookitem">
	                  <div><img class="best_bookimg" width="152px" src="../img/preview_image.png" /></div>
	                     <div class="best_stock_name">베스트셀러이름3</div>
	               </div>
	         </div>
	      </div>
	<div class="book_container">
	   <div class="list_label">책 전체보기<div class="list_liner"></div></div>
	      <div class="booklist">
	      	 <c:forEach items="${booklist }" var="list">
	         <div class="bookitem">
	            <a href="bookDetail?bookNo=${list.bookNo}"><div><img class="bookimg" height="148px" src="../img/preview_image.png"/></div></a>
	               <div class="stock_name">${list.bookTitle }</div>
	         </div>
	         </c:forEach>
           
		</div>
	</div>
</div>
</body>
</html>
