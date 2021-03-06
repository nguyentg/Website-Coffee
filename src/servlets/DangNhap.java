package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.MyUtils;
import beans.acount;
import utils.DBUtils;


/**
 * Servlet implementation class DangNhap
 */
@WebServlet(name ="dangnhap", urlPatterns = {"/dangnhap"})
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = (String)request.getParameter("SoDienThoai");
		String tenkhach = (String)request.getParameter("TenKhach");
		int thoat = 1;
		request.setAttribute("exit", thoat);
		request.setAttribute("SoDienThoai", sodienthoai);
		request.setAttribute("TenKhach", tenkhach);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/TaiKhoan.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = (String)request.getParameter("sodienthoaidangnhap");
		String matkhau = (String)request.getParameter("matkhaudangnhap"); 
		String errorStringLogin = null;
		acount nguoidung = new acount(sodienthoai, matkhau);
		acount inf_user = null; // l???y th??ng tin ng?????i ????ng nh???p b??? v??o ????y: S??? ??i???n tho???i, t??n kh??ch, m???t kh???u 
		try {
			inf_user = DBUtils.ktraDangNhap(conn, nguoidung);
		}
		catch(SQLException e){
			e.printStackTrace();
			errorStringLogin = e.getMessage();
		}
		
		request.setAttribute("inf_user", inf_user);
        
		// N???u c?? l???i
		if (inf_user == null)
		{
			System.out.println("????ng nh???p th???t b???i");
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/TaiKhoan.jsp");
	        dispatcher.forward(request, response);
		}
		else
		{
			System.out.println(inf_user);
			request.setAttribute("SoDienThoai", inf_user.getSodienthoai()); 
			request.setAttribute("TenKhach", inf_user.getMatkhau()); // l???y t??n kh??ch t??? ph????ng th???c getMatKhau ^^
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/menu");
	        dispatcher.forward(request, response);
		}

	}

}
