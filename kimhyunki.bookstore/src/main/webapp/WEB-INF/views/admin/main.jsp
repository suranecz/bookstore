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
      height:600px;
      box-shadow:0px 0px 5px grey;
      display:flex;
   }
   .bookimg{
		 position:relative;
      width:auto;
      height:100%;
   }
   .book_info{
     background:white;
      padding:50px;
      flex-grow:1;
      display:flex;
      flex-direction:column;
   }
   .stock_row{
     width:100%;
      height:40px;
      position:relative;
      margin-bottom: 30px;
      display:flex;
			border:1px solid #ddd;
			border-radius:40px;
   }
	 .stock_row label{
		 width:100px;
		 line-height:40px;
		 text-align:center;
		 background:#eee;
		 border-radius:40px;
	 }
	 .amountrow{
		 margin-top:10px;
		 margin-bottom:10px;
		 width:100%;
	 }
	 .pricerow{
		 margin-top:10px;
		 margin-bottom:10px;
		 width:100%;
	 }
   .stock_content{
     font-size:17px;
     height:250px;
     border:1px solid #eee;
   }
	 .input-label{
		 display:block;
		 width:150px;
		 text-align:center;
		 line-height:40px;
		 color:#333;
		 font-size:1.1em;
	 }
   .stock_content:focus{
     outline:none;
   }
   .stock_input:focus{
     outline:none;
   }
   .stock_input{
     font-size:20px;
     width:100%;
     height:40px;
     border:none;
		 padding-left:10px;
     background: none;
     transition: 0.3s;
   }
   #pricecounter{
     position:absolute;
     right:0px;
     top:0px;
		 width:180px;
		 text-align: right;
		 background:transparent;
		 padding-right:10px;
   }
   .button_wrap{
     position:relative;
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
     cursor:pointer;
     font-size: 1.0em;
   }
   #file_btn{
		 position:absolute;
		 left:50%; bottom:20px;
		 transform:translateX(-50%);
     border:2px solid #4078c9;
     background-color:white;
     color:#4078c9;
     padding:10px;
     padding-left:30px;
     padding-right:30px;
     border-radius:30px;
   }
   input[type='file']{
     opacity:0;
     position:absolute;
		 left:50%; bottom:20px;
		 transform:translateX(-50%);
		 overflow:hidden;
     width:180px;
     height:50px;
     border: 1px solid #ddd;
     cursor:pointer;
   }
</style>
<script>
function img_preview(){
	var fileList = document.getElementById('product_img').files;
	var reader = new FileReader();
	reader.readAsDataURL(fileList[0]);

	reader.onload=function(){
		document.getElementById('preview').src=reader.result;
	}
}
function howMuchIsIt(){
	  document.getElementById('stockPrice').value=document.getElementById('stockPrice').value.replace(/[^0-9]/g,'');
		amount = document.getElementById('stockPrice').value;
		if(amount.length>12){
			amount= amount.substring(0,amount.length-12)+"조 "+amount.substring(amount.length-12,amount.length);
		}
		if(amount.length>8){
			amount= amount.substring(0,amount.length-8)+"억 "+amount.substring(amount.length-8,amount.length);
		}
		if(amount.length>4){
			amount= amount.substring(0,amount.length-4)+"만 "+amount.substring(amount.length-4,amount.length);
		}
		document.getElementById('pricecounter').innerHTML=amount+"원";
	}
</script>
</head>
<body>
   <header><div class="title1"><img src="logo/phased.png"/></div>
      <nav>
         <ul class="nav">
            <li class="navlist focused"><a href="insertBook.jsp">책 등록하기</a></li>
            <li class="navlist"><a href="deliveryManage.jsp">주문배송확인</a></li>
            <li class="navlist"><a href="updateStock.jsp">재고현황</a></li>
         </ul>
      </nav>
   </header>
	<form name="frmName" method="post" enctype="multipart/form-data" action="stockImgProc.jsp">
  <div id="container">
    <div class="booklist">
      <div class="bookimg"><img src="logo/preview_image.png" width="auto" height="100%" id="preview">
			<label id="file_btn" for="product_img">이미지 업로드...</label>
			<input type="file" onChange="img_preview()" name="product_img" id="product_img"/>
		 </div>
         <div class="book_info">
            <div class="stock_row"><label>제목</label><input class="stock_input" type="text" name="stockName" required/></div>
            <textarea class="stock_content" placeholder="줄거리" name="stockContent"></textarea>
            <div class="stock_row amountrow">
              <label class="input-label">수량</label><input class="stock_input" type="number" name="stockAmount" required/>
            </div>
						<div class="stock_row pricerow">
              	<label class="input-label">가격</label><input class="stock_input" type="text" name="stockPrice" id="stockPrice" onkeyup="howMuchIsIt()" required/><label id="pricecounter">원</label>
            </div>
            <div class="button_wrap"><input type="submit" class="charge_btn" value="새 책 등록"/>
         </div>
      </div>
   </div>
	 </div>
   </form>
</body>
</html>
