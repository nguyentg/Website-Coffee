package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.giohang;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class ThanhToan
 */
@WebServlet("/ThanhToan")
public class ThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThanhToan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		int mamon = Integer.parseInt(request.getParameter("idMon"));
		int soluong = Integer.parseInt(request.getParameter("SoLuong"));
		String sodienthoai = (String)request.getParameter("SoDienThoai");
		String tenkhach = (String)request.getParameter("TenKhach");
		String diachi = new String(request.getParameter("DiaChi").getBytes("ISO-8859-1"), "UTF-8");
		try
		{	
			DBUtils.insertHoaDon(conn, mamon, soluong, sodienthoai, diachi);			
			System.out.println("Tao hoa don thanh cong!");
		}
		catch(Exception e)
		{
			// TODO: handle exception
			System.out.println("Tao hoa don mon that bai!");
		}
		
		// Xóa món này trong giỏ hàng
		try
		{	DBUtils.deleteKhachHang(conn, mamon, sodienthoai);			
			System.out.println("Xoa mon thanh cong!");
		}
		catch(Exception e)
		{
			// TODO: handle exception
			System.out.println("Xoa mon that bai!");
		}
		
		// Reset lại danh sách giỏ hàng
		List<giohang> listGioHang = null; 
		try {
			listGioHang = DBUtils.GioHang(conn, sodienthoai);
            System.out.println("Danh sach gio hang");
        } 
        catch (SQLException e) {
        }
		request.setAttribute("SoDienThoai", sodienthoai);
		request.setAttribute("TenKhach", tenkhach);
		request.setAttribute("danhSachGioHang", listGioHang);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/GioHang.jsp");
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		int mamon = Integer.parseInt(request.getParameter("idMon"));
		int soluong = Integer.parseInt(request.getParameter("SoLuong"));
		String sodienthoai = (String)request.getParameter("SoDienThoai");
		String tenkhach = new String(request.getParameter("TenKhach").getBytes("ISO-8859-1"), "UTF-8");
		String diachi = new String(request.getParameter("DiaChi").getBytes("ISO-8859-1"), "UTF-8");
		try
		{	
			DBUtils.insertHoaDon(conn, mamon, soluong, sodienthoai, diachi);			
			System.out.println("Tao hoa don thanh cong!");
		}
		catch(Exception e)
		{
			// TODO: handle exception
			System.out.println("Tao hoa don mon that bai!");
		}
		
		// Xóa món này trong giỏ hàng
		try
		{	DBUtils.deleteKhachHang(conn, mamon, sodienthoai);			
			System.out.println("Xoa mon thanh cong!");
		}
		catch(Exception e)
		{
			// TODO: handle exception
			System.out.println("Xoa mon that bai!");
		}
		
		// Reset lại danh sách giỏ hàng
		List<giohang> listGioHang = null; 
		try {
			listGioHang = DBUtils.GioHang(conn, sodienthoai);
            System.out.println("Danh sach gio hang");
        } 
        catch (SQLException e) {
        }
		request.setAttribute("SoDienThoai", sodienthoai);
		request.setAttribute("TenKhach", tenkhach);
		request.setAttribute("danhSachGioHang", listGioHang);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/GioHang.jsp");
	       dispatcher.forward(request, response);
	}

}
