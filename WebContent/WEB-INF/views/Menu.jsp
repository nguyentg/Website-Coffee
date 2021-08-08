<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="zxx">
<head>
	<jsp:include page="_style_Menu.jsp"></jsp:include>
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
	.button_fake1{
		text-align: center;
	  	border: none;
	  	color: white;
	  	padding: 15px 20px;
	  	font-size: 16px;
	  	cursor: pointer;
	  	background-color: #ff9800;
	  	position : relative;
    	left: 40%;
    	font-family: "Times New Roman", Times, serif;
    	font-size: 28px;
	}
	</style>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	
	<!-- inner banner -->

<!-- breadcrumb -->
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath}/TrangChu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Trang Chủ</a>
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
<!-- cart's-Product-Display -->
<div class="wthreeproductdisplay">
    <div class="container">
        <div class="top-grid">
            <div class="cart-grid" id="cart-1">
                <div class="img">
                    <img src="images/mon23.jpg"  alt="img">
                </div>
                <ul class="info">
                    <li>Espresso</li>
                    <li>$6.0</li>
                </ul>
                <div class="snipcart-details "> <!-- String user, int id, int soluong ::: -->
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <!-- <input type="hidden" name="SoDienThoai" value="${SoDienThoai}">-->
                        <input type="hidden" name="mamon" value="23">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-2">
                <div class="img">
                    <img src="images/mon24.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Cappuccino</li>
                    <li>$9.00</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="24">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-3">
                <div class="img">
                    <img src="images/mon25.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Latte</li>
                    <li>$7.0</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="25" >
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-4">
                <div class="img">
                    <img src="images/mon26.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Carael</li>
                    <li>$6.00</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="26">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="bot-grid">
            <div class="cart-grid" id="cart-5">
                <div class="img">
                    <img src="images/mon27.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Mocha</li>
                    <li>$3.0</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="27">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-6">
                <div class="img">
                    <img src="images/mon28.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Americano</li>
                    <li>$5.00</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="28">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-7">
                <div class="img">
                    <img src="images/mon29.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Socola</li>
                    <li>$3.0</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="29">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>
            <div class="cart-grid" id="cart-8">
                <div class="img">
                    <img src="images/mon30.jpg" alt="img">
                </div>
                <ul class="info">
                    <li>Macchiato</li>
                    <li>$4.0</li>
                </ul>
                <div class="snipcart-details ">
                    <form action="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" method="post">
                        <input type="hidden" name="sodienthoai" value="${SoDienThoai}">
                        <input type="hidden" name="mamon" value="30">
                        <input type="number" name="soluong" value=1 min="1" max="20">
                        <input type="submit" class="button_fake" value="Thêm" style="">
                    </form>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </div>
</div>

<a class="button_fake1" href="${pageContext.request.contextPath}/ALL?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Xem thêm món mới nhé</a>

<!-- //cart's-Product-Display -->


	
	<jsp:include page="_footer.jsp"></jsp:include>
	<jsp:include page="Check.jsp"></jsp:include>

</body>
</html>