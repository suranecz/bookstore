<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=no">
<meta charset="utf-8">
<title>상품 등록 폼</title>
<style>
	@font-face {
		font-family: NanumGothic;
		src: url(NanumGothic.ttf) format('truetype');
	}

	html, body {
		font-family: NanumGothic;
		width: 100%;
		height: 100%;
	}

	a {
		text-decoration: none;
		color: #333;
	}

	body {
		margin: 0 auto;
	}

	header {
		background: white;
		border-bottom: 1px solid rgb(100, 100, 100, 0.3);
	}

	.title1 {
		color: #333;
		text-align: center;
	}

	.nav {
		margin: 0px;
		padding: 0px;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}

	.navlist {
		list-style: none;
		width: 150px;
		text-align: center;
	}

	.navlist.focused a {
		border-bottom: 5px solid #4078c9;
	}

	.navlist a {
		width: 100px;
		display: inline-block;
		padding: 10px;
		border-bottom: 5px solid #ddd;
	}

	#container {
		max-width: 1000px;
		margin-left: auto;
		margin-right: auto;
		padding-left: 10px;
		padding-right: 10px;
	}

	h2 {
		font-size: 26px;
		margin: 20px 0;
		text-align: center;
		small
		{
		font-size
		:
		0.5em;
	}

	}
	.responsive-table {
		margin: 0px;
		padding: 0px;
		margin-top: 30px;
	}

	.responsive-table  li {
		border-radius: 3px;
		padding: 25px 30px;
		display: flex;
		justify-content: space-between;
		margin-bottom: 25px;
	}

	.responsive-table  .table-header {
		background-color: #4078c9;
		color: white;
		text-align: center;
		font-size: 14px;
		text-transform: uppercase;
		letter-spacing: 0.03em;
	}

	.responsive-table  .table-row {
		background-color: #ffffff;
		box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.1);
		text-align: center;
	}

	.responsive-table  .col-1 {
		flex-basis: 15%;
    overflow:hidden;
	}

	.responsive-table  .col-2 {
		flex-basis: 25%;
    overflow:hidden;
	}

	.delivery_status {
		padding: 4px;
		width: 150px;
		border: 1px solid #777;
	}

	.delivery_status.selected {
		border: 2px solid #4078c9;
	}

	.update_btn {
		border: 1px solid #4078c9;
		background-color: #4078c9;
		color: white;
		font-size: 1.0em;
		padding: 5px;
		padding-left: 30px;
		padding-right: 30px;
		border-radius: 30px;
		cursor: pointer;
	}

	@media screen and (max-width:1000px) {
		.responsive-table .table-header {
			display: none;
		}
		.responsive-table .table-row {

		}
		.responsive-table li {
			display: block;
		}
		.responsive-table .col {
			flex-basis: 100%;
		}
		.responsive-table .col {
			display: flex;
			padding: 10px 0;
		}
		.responsive-table .col:before {
			color: #6C7A89;
			padding-right: 10px;
			content: attr(data-label);
			flex-basis: 50%;
			text-align: right;
		}
	}
</style>
<script>
function selectOption(id){
	id.classList.add('selected');
	document.getElementById(idx).value="";
}
function updateInfo(orderId,idx){
	var newStatus = document.getElementById(idx).value;
	var xhr = new XMLHttpRequest();
	xhr.onload=function(){
		if(xhr.status==200){
			var str =xhr.responseText;
			var obj = JSON.parse(str);
			alert(obj.updateMessage);
		}
	};
	xhr.open('GET',"ajaxDeliveryManage.jsp?orderId="+orderId+"&deliveryStatus="+newStatus,true);
	xhr.send();
}
</script>
</head>
<body>
	<header>
		<div class="title1">
			<img src="logo/phased.png" />
		</div>
		<nav>
			<ul class="nav">
				<li class="navlist"><a href="insertBook.jsp">책 등록하기</a></li>
				<li class="navlist focused"><a href="deliveryManage.jsp">주문배송확인</a></li>
				<li class="navlist"><a href="updateStock.jsp">재고현황</a></li>
			</ul>
		</nav>
	</header>
	<div id="container">
		<ul class="responsive-table">
			<li class="table-header">
				<div class="col col-1">주문번호</div>
				<div class="col col-1">회원아이디</div>
				<div class="col col-1">품목</div>
				<div class="col col-1">수량</div>
				<div class="col col-2">주문날짜</div>
				<div class="col col-2">배송상태</div>
				<div class="col col-2">상태수정</div>
			</li>
					<form method="POST" action="ajaxDeliveryManage.jsp">
						<li class="table-row">
							<div class="col col-1" data-label="주문번호">123</div>
							<div class="col col-1" data-label="회원아이디">fluxion95</div>
							<div class="col col-1" data-label="품목">23423dd4sdf</div>
							<div class="col col-1" data-label="수량">2222권</div>
							<div class="col col-2" data-label="주문날짜">2020-01-05</div>
							<div class="col col-2" data-label="배송상태">
								<select class="delivery_status" id="${idx}" onChange="selectOption(this)">
									<option value="배송대기"<c:if test="${delivery.deliveryStatus eq '배송대기'}">selected</c:if>>배송대기</option>
									<option value="배송중"<c:if test="${delivery.deliveryStatus eq '배송중'}">selected</c:if>>배송중</option>
									<option value="배송완료"<c:if test="${delivery.deliveryStatus eq '배송완료'}">selected</c:if>>배송완료</option>
								</select>
							</div>
							<div class="col col-2" data-label="상태수정">
								<div style="display: flex; justify-content: center;">
									<span class="update_btn"
										onClick="updateInfo(${order.orderId},'${idx}')">배송정보 수정</span>
								</div>
							</div>
						</li>
					</form>
		</ul>
	</div>
</body>
</html>
