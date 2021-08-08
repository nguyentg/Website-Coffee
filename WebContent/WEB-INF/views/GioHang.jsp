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
          <th>Tên khách</th>
          <th>Tên món</th>
          <th>Số lượng</th>
          <th>Xóa món</th>
          <th>Thanh toán</th>
       </tr>
       
       <c:forEach items="${danhSachGioHang}" var="thuoctinh" >
       <tr>
	        <td>${thuoctinh.tenkhach}</td> 
	        <td>${thuoctinh.tenmon}</td>
	        <td>${thuoctinh.soluong}</td>
	        <td><a class="button_fake" href="${pageContext.request.contextPath}/XoaMon?idMon=${thuoctinh.mamon}&SoDienThoai=${SoDienThoai}&TenKhach=${TenKhach}">Xóa</a></td>
	        <td>
	        <form action="${pageContext.request.contextPath}/ThanhToan?idMon=${thuoctinh.mamon}&SoLuong=${thuoctinh.soluong}" method="post">  
				Địa chỉ:<input type="text" name="DiaChi"/><br/>
				<input type="hidden" name="SoDienThoai" value="${SoDienThoai}"/>
				<input type="hidden" name="TenKhach" value="${TenKhach}"/>
				<input type="submit" class="button_fake" value="Thanh toán" style="">  
			</form>
			</td>
	    </tr>
		</c:forEach>
       
    </table>
	
	<jsp:include page="_footer.jsp"></jsp:include>
	
</body>
</html>