package servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.acount;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class DangKy
 */
@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/DangKy.jsp");
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = new String(request.getParameter("sodienthoai").getBytes("ISO-8859-1"), "UTF-8"); 
		String matkhau = new String(request.getParameter("matkhau").getBytes("ISO-8859-1"), "UTF-8"); 
		String tenkhach = new String(request.getParameter("tenkhach").getBytes("ISO-8859-1"), "UTF-8"); 
		String thongbao = null;
		acount nguoidung = new acount(sodienthoai, matkhau, tenkhach);
		try
		{
			DBUtils.insertKhachHang(conn, nguoidung);
			if (DBUtils.ktraDangNhap(conn, nguoidung) != null)
			{
				thongbao = "1"; //Tạo tài khoản thành công
			}
			else
			{
				thongbao = "0"; //Tài khoản này đã tồn tại!
			}
		}
		catch(Exception e)
		{
			// TODO: handle exception
		}
		request.setAttribute("ketquadangki", thongbao);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/TaiKhoan.jsp");
	       dispatcher.forward(request, response);
		
	}

}
