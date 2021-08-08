<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="zxx">
<head>
	<jsp:include page="_style_TaiKhoan.jsp"></jsp:include>
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
				<a href="${pageContext.request.contextPath}/TrangChu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Đăng nhập bằng quyền hạn Admin</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
	<!-- //inner banner -->

	<!-- contact -->
	<div class="contact py-5">
		<div class="container py-xl-5 py-lg-3">
			<h5 class="tittle-w3 text-dark text-center mb-5">Admin</h5>
			<div class="row contact-us1-bottom">
				<div class="col-lg-6">
					<form method="POST" action="${pageContext.request.contextPath}/ad?SoDienThoai=${sodienthoaiAD}">
						<div class="form-group">
							<input type="text" placeholder="Số điện thoại" name="sodienthoaiAD" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Mật khẩu" name="matkhauAD" class="form-control">
						</div>
						<input type="submit" value="Login">
					</form>
				</div>
				
				<div class="col-lg-6 mt-lg-0 mt-5">
					<div class="row">
						<div class="col-4 home-radio-clock">
							<ul class="list-unstyled">
								<li>
									<i class="fas fa-home mr-3"></i>Address</li>
								<li class="my-5">
									<i class="fas fa-phone mr-3"></i>Call</li>
								<li>
									<i class="far fa-clock mr-3"></i>Opening Time</li>
							</ul>
						</div>
						<div class="col-8 home-radio-clock-right">
							<ul class="list-unstyled">
								<li>01 - Võ Văn Ngân - Linh Trung
									<span>Thủ Đức - Hồ Chí Minh</span>
								</li>
								<li class="my-4">(+04) 123-456-78
									<span>(+84) 012-345-67</span>
								</li>
								<li>Mon-Sat:
									<span>07h-18h</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->
	
	<jsp:include page="_footer.jsp"></jsp:include>
</body>

