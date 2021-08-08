<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header -->
<div class="header">
    <!-- navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- logo -->
        <h1>
            <a class="navbar-brand" href="">Cappuccino
                <span>Coffee</span>
            </a>
        </h1>
        <!-- //logo -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- Thanh menu -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="list-style: none;">
	    	<li class="nav-item">
            	<a class="nav-link" href="${pageContext.request.contextPath}/TrangChu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Trang chủ
                	<span class="sr-only">(current)</span>
                </a>
			</li>
        	<li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/BoSuuTap?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Bộ sưu tập</a>
            </li>
            <c:if test="${empty SoDienThoai}">
	            <li class="nav-item">
		            <a class="nav-link" href="${pageContext.request.contextPath}/menu">Menu</a>
				</li>
	        	<li class="nav-item" >
	                <a class="nav-link" href="${pageContext.request.contextPath}/dangnhap">Tài Khoản</a>
	            </li>
	            <c:if test="${empty sodienthoaiAD}"> <!-- Chưa đăng nhập vào ADMIN -->
		            <li class="nav-item" >
		            	<a class="nav-link" href="${pageContext.request.contextPath}/ad?SoDienThoai=${sodienthoaiAD}">ADMIN</a>
		            </li>
	            </c:if>
	            <c:if test="${not empty sodienthoaiAD}"> <!-- đã đăng nhập vào ADMIN -->
		            <li class="nav-item" id="thoatAD" style="display:none;">
		            	<a class="nav-link" href="${pageContext.request.contextPath}/ad?SoDienThoai=${NULL}">Thoát</a>
		            </li>
	            </c:if>
            </c:if>
            <c:if test="${not empty SoDienThoai}"> <!-- đã đăng nhập, thanh header gồm: Trang chủ, bộ sưu tập, menu, giỏ hàng, thoát -->
	            <li class="nav-item">
	        		<a class="nav-link" href="${pageContext.request.contextPath}/menu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Menu</a>
	    		</li>
	            <li class="nav-item">
	        		<a class="nav-link" href="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Giỏ Hàng</a>
	    		</li>
	    		<li class="nav-item" id="taikhoan">
	                <a class="nav-link" href="${pageContext.request.contextPath}/dangnhap?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Tài Khoản</a>
	            </li>
	            <li class="nav-item" id="thoat" style="display:none;">
	                <a class="nav-link" href="${pageContext.request.contextPath}/dangnhap?SoDienThoai=${NULL}&TenKhach=${NULL}">Thoát</a>
	            </li>
	            <li class="nav-item" id="all" style="display:none;">
	        		<a class="nav-link" 
	        		href="${pageContext.request.contextPath}/ALL?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Menu</a>
	    		</li>
            </c:if>
        </div>
    </nav>
    <!-- //navigation -->
</div>
<!-- //header -->
<c:if test="${not empty SoDienThoai}">
<h1 style="font-family:'Marcellus SC', serif;font-size: 2em;vertical-align: baseline;">Welcome ${TenKhach}</h1>
	<script>
		document.getElementById("taikhoan").style.display = 'none';
		document.getElementById("thoat").style.display = 'block';
	</script>
</c:if>

<c:if test="${not empty sodienthoaiAD}">
	<script>
		document.getElementById("thoatAD").style.display = 'block';
	</script>
</c:if>
	<script>
		document.getElementById("all").style.display = 'none';
	</script>
