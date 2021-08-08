<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<jsp:include page="_style_TrangChu.jsp"></jsp:include>
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

	
	<p style="color: red;">${errorString}</p>
	<table border="1" cellpadding="3" cellspacing="1" >
       <tr>
          <th>Mã đơn</th>
          <th>Mã món</th>
          <th>Số lượng</th>
          <th>Ngày thanh toán</th>
          <th>Số điện thoại khách hàng</th>
          <th>Địa chỉ</th>
       </tr>
       <c:forEach items="${danhSachHoaDon}" var="thuoctinh" >
       <tr>
	        <td>${thuoctinh.madon}</td> 
	        <td>${thuoctinh.mamon}</td>
	        <td>${thuoctinh.soluong}</td>
	        <td>${thuoctinh.ngaythanhtoan}</td> 
	        <td>${thuoctinh.sodienthoai}</td>
	        <td>${thuoctinh.diachi}</td>
	    </tr>
		</c:forEach>
       
    </table>
	
	<jsp:include page="_footer.jsp"></jsp:include>
	  
</body>
</html>