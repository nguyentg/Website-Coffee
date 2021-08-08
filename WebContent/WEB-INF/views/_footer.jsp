<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

	<!-- footer -->
	<footer>
		<div class="w3ls-footer-grids py-5">
			<div class="container py-lg-2">
				<div class="row">
					<div class="col-lg-3 col-sm-6 w3l-footer one">
						<h2 class="index.html mb-3">Cappuccino Coffee</h2>
						<p>Xin hân hạnh phục vụ quý khách. Chúng tôi cam đoan sẽ mang lại cho mọi người những tách coffee chất lượng nhât</p>
						<div class="clearfix"></div>
					</div>
					<div class="col-lg-2 col-sm-6 w3l-footer agileinfo_footer_grid my-sm-0 my-4">
						<h3 class="mb-3">Navigation</h3>
						<div class="nav-w3-l">
							<ul class="list-unstyled">
								<li class="mb-2">
									<a href="${pageContext.request.contextPath}/TrangChu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Trang chủ</a>
								</li>
								<li class="mb-2">
									<a href="${pageContext.request.contextPath}/menu?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" class="">Menu</a>
								</li>
								<li class="mb-2">
									<a href="${pageContext.request.contextPath}/BoSuuTap?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" class="">Bộ sưu tập</a>
								</li>
								<li class="mb-2">
									<a href="${pageContext.request.contextPath}/dangnhap" class="">Tài khoản</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/GioHang?SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}" class="">Giỏ hàng</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 w3l-footer two mt-lg-0 mt-sm-5">
						<h3 class="mb-3">Connect With</h3>
						<ul class="list-unstyled">
							<li class="mb-3">
								<a class="fb" href="#">
									<i class="fab fa-facebook-f"></i>Like us on Facebook</a>
							</li>
						</ul>
					</div>
					<div class="col-lg-4 col-sm-6 w3l-footer three mt-lg-0 mt-4">
						<h3 class="mb-3">Address</h3>
						<ul class="list-unstyled">
							<li>
								<i class="fas fa-map-marker"></i>
								<p>Cửa hàng chúng tôi
									<span>Số 1 Võ Văn Ngân,</span>Thủ Đức, Hồ Chí Minh. </p>
								<div class="clearfix"></div>
							</li>
							<li class="my-2">
								<i class="fas fa-phone"></i>
								<p>1234567890</p>
								<div class="clearfix"></div>
							</li>
							<li>
								<i class="fas fa-envelope"></i>
								<a href="mailto:info@example.com">mail@example.com</a>
								<div class="clearfix"></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right-grids py-3">
			<p class="footer-gd text-center text-white">© 2020 Cappuccino Coffee. All Rights Reserved | Design by
				<a href="#" target="_blank">Anh Trương</a>
			</p>
		</div>
		
		<!-- Js files -->
		<!-- JavaScript -->
		<script src="js/jquery-2.2.3.min.js"></script>
		<!-- Default-JavaScript-File -->
		<script src="js/bootstrap.js"></script>
		<!-- Necessary-JavaScript-File-For-Bootstrap -->
	
		<!-- smooth scrolling -->
		<script src="js/SmoothScroll.min.js"></script>
		<!-- //smooth scrolling -->
	
		<!-- move-top -->
		<script src="js/move-top.js"></script>
		<!-- easing -->
		<script src="js/easing.js"></script>
		<!--  necessary snippets for few javascript files -->
		<script src="js/coffee.js"></script>
	
		<!-- //Js files -->
	</footer>
	<!-- //footer -->
