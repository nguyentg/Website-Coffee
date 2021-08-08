<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html lang="zxx">
<head>
	<jsp:include page="_style_ALL.jsp"></jsp:include>
	<style>
	.button_fake{
		text-align: center;
	  	border: none;
	  	color: white;
	  	padding: 4px 15px;
	  	font-size: 16px;
	  	cursor: pointer;
	  	background-color: #ff9800;
	}
	</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	
	<!-- inner banner -->
<div class="banner-2">

</div>
<!-- breadcrumb -->
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">Menu</li>
    </ol>
</nav>
<div class="contact py-5">
    <div class="container py-xl-5 py-lg-3">
        <h5 class="tittle-w3 text-dark text-center mb-5">Menu</h5>
    </div>
</div>
<!-- breadcrumb -->
<!-- //inner banner -->

<!-- Tất cả các món sẽ hiện ở đây nhé -->

<!-- cart's-Product-Display -->
	<div class="wthreeproductdisplay">
	    <div class="container">
	        <div class="top-grid">
		       <c:forEach items="${LIST1}" var="mon" >
			        <div class="cart-grid" id="cart-1">              
			            <div class="img">
			                    <img src="${mon.linkanh}" width="153" height="102" alt="img">
			            </div>
			            <ul class="info">
			                <li>${mon.tenmon}</li> 
			                <li>${mon.gia}</li>
			            </ul>
						<div class="snipcart-details ">
			            <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        	<input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        	<input type="hidden" name="mamon" value="${mon.id}">
                        	<input type="number" name="soluong" value=1 min="1" max="20">
                        	<input class="button_fake" type="submit" class="" value="Thêm" style="">
                    	</form>
			            </div> 
					</div>
			</c:forEach>
			</div>
	
	            <div class="clear"></div>
	        </div>
	    </div>

	<!-- //cart's-Product-Display -->

	            
<!-- //Tất cả các món sẽ hiện ở đây nhé -->

<div class="wthreecartaits wthreecartaits2 cart cart box_1">
   	<form action="#" method="post" class="last">
       <input type="hidden" name="cmd" value="_cart" />
       <input type="hidden" name="display" value="1" />
       <button class="w3view-cart" type="submit" name="submit" value=""> Check
       </button>
	</form>
 </div>

	<jsp:include page="Check.jsp"></jsp:include>
	<jsp:include page="_footer.jsp"></jsp:include>
	
	
</body>
</html>