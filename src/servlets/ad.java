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

import beans.acount;
import beans.hoadon;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class ad
 */
@WebServlet("/ad")
public class ad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doget");
		
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = (String)request.getParameter("sodienthoaiAD");
		request.setAttribute("sodienthoaiAD", sodienthoai);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/Admin.jsp"); // trang này dùng để xem hóa đơn
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = (String)request.getParameter("sodienthoaiAD");
		String matkhau = (String)request.getParameter("matkhauAD");
		acount nguoidung = new acount(sodienthoai, matkhau);
		acount inf_user = null;
		try {
			inf_user = DBUtils.ktraDangNhapAD(conn, nguoidung);
		}
		catch(SQLException e){
		}
		System.out.println("dopost");
		// Nếu có lỗi
		if (inf_user == null)
		{
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/Admin.jsp");
	        dispatcher.forward(request, response);
		}
		else
		{
			List<hoadon> listBill = null; 
			try {
				listBill = DBUtils.HoaDon(conn);
	            System.out.println("Danh sach hoa don");   
	        } 
	        catch (SQLException e) {
	        }
			request.setAttribute("sodienthoaiAD", sodienthoai);
			System.out.println(sodienthoai);
			request.setAttribute("danhSachHoaDon", listBill);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/HoaDon.jsp");
		       dispatcher.forward(request, response);
		}
	}
}