<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<jsp:include page="_style_TrangChu.jsp"></jsp:include>
</head>
<body>
	<!-- thanh menu -->

	<jsp:include page="_header.jsp"></jsp:include>
	
	
	<!-- banner -->
	<div class="banner">
		<div id="carouselExampleControls" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000"
		    data-pause="hover">
			<!-- Wrapper-for-Slides -->
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="images/banner.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption">
						<h4 data-animation="animated flipInX">Cappuchino Coffee</h4>
						<h3 data-animation="animated flipInX" class="text-capitalize">Hân hạnh phục vụ quý khách</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/banner4.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_right">
						<h4 data-animation="animated flipInX">Cappuchino Coffee</h4>
						<h3 data-animation="animated flipInX" class="text-capitalize">Hân hạnh phục vụ quý khách</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/banner1.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_center">
						<h4 data-animation="animated flipInX">Cappuchino Coffee</h4>
						<h3 data-animation="animated flipInX" class="text-capitalize">Hân hạnh phục vụ quý khách</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/banner3.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption">
						<h4 data-animation="animated flipInX">Cappuchino Coffee</h4>
						<h3 data-animation="animated flipInX" class="text-capitalize">Hân hạnh phục vụ quý khách</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/banner2.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_right">
						<h4 data-animation="animated flipInX">Cappuchino Coffee</h4>
						<h3 data-animation="animated flipInX" class="text-capitalize">Hân hạnh phục vụ quý khách</h3>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev left kb_control_left" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next right kb_control_right" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- //banner -->


	<!-- about -->
	<div class="about-section py-5">
		<div class="container py-xl-5 py-lg-3">
			<h5 class="tittle-w3 text-dark text-center mb-4">Welcome</h5>
			<div class="row about-main">
				<div class="col-lg-6 about-img">
					<img src="images/about.png" alt="" class="img-fluid">
				</div>
				<div class="col-lg-6 about-w3ls-right">
					<h3 class="subheading-wthree mb-2">Tiêu chí của chúng tôi</h3>
					<p class="para-w3l">Mang lại cho quý khách trải nghiệm coffee như ngồi ở quán. Những tách coffee ngon lành, mang lại cảm giác tỉnh táo cho ngày dài làm việc</p>
					<ul class="list-unstyled">
						<li class="mb-3 mt-4">
							<i class="fas fa-hand-point-right mr-3"></i>Chất lượng hàng đầu</li>
						<li class="mb-3">
							<i class="fas fa-hand-point-right mr-3"></i>Đội ngũ chuyên nghiệp</li>
						<li class="mb-3">
							<i class="fas fa-hand-point-right mr-3"></i>Ship hàng nhanh chóng</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--//about-->

	<!-- video play -->
	<div class="about-bottom text-center py-5">
		<div class="container py-xl-5 py-lg-3">
			<p class="text-white">Cappuccino Coffee</p>
			<h4 class="text-white mx-auto font-italic my-4">Trải nghiệm hương vị tuyệt vời và phong phú</h4>
		</div>
	</div>
	<!-- //video play -->

	<!-- middle section -->
	<div class="section-middle">
		<div class="d-flex">
			<div class="col-md-6 left-gids-agile">
				<i class="fas fa-coffee "></i>
				<h4 class="bottom-title-w3ls text-dark my-4 pb-3">Chương trình Online </h4>
				<p>Menu đồ uống phong phú, chất lượng và giá cả vô cùng hợp lý,đội ngũ ship hàng chuyên nghiệp, đảm bảo sẽ mang lại cho quý khách chất lượng tốt nhất.</p>
			</div>
			<div class="col-md-6 w3ls-right">
				<div class="agile-width">
					<h4 class="bottom-title-w3ls text-dark my-4 pb-3">View quán</h4>
					<p>Khu Ghế bar View ra Mặt đường rất hợp với bạn tuổi teen, Khu bàn nhật ,ngồi bệt rất phu hợp với các đôi bạn cần không gian riêng tĩnh lặng, thoải mái....
						Rất hy vọng các bạn đam mê Công nghệ hãy đến One Mobile Cafe chia sẻ cảm xúc cùng chúng tôi
					</p>
				</div>
			</div>
		</div>
		<img src="images/middle.png" alt="" class="img-fluid img-posi">
	</div>
	<!-- //middle section -->

	<!-- middle section 2 -->
	<div class="mobile-section py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="row w3ls-section-features p-md-5 py-md-0 py-4 px-md-0 px-3">
				<div class="col-sm-6 services-left-w3-agile">
					<h5 class="tittle-w3-2 mb-md-4 mb-3 text-white">Quán Coffee cho tương lai</h5>
					<ul class="list-unstyled lists-w3lswe">
						<li class="mb-2">
							<i class="fas fa-long-arrow-alt-right mr-3"></i>Phù hợp mọi lứa tuổi</li>
						<li class="mb-2">
							<i class="fas fa-long-arrow-alt-right mr-3"></i>Nơi lý tưởng để chill</li>
						<li class="mb-2">
							<i class="fas fa-long-arrow-alt-right mr-3"></i>View đẹp để selfie cùng bạn bè</li>
						<li class="mb-2">
							<i class="fas fa-long-arrow-alt-right mr-3"></i>Hòa mình vào không khí của Nhật Bản</li>
						<li class="mb-2">
							<i class="fas fa-long-arrow-alt-right mr-3"></i>Coder - Nơi tập trung sáng tạo</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- //middle section 2 -->
	
	<jsp:include page="_footer.jsp"></jsp:include>
	
</body>
</html>


