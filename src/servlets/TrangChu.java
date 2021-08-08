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
import beans.mon;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class TrangChu
 */
@WebServlet(urlPatterns = { "/TrangChu" })

public class TrangChu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrangChu() {
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
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/TrangChu.jsp");
	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/TrangChu.jsp");
        dispatcher.forward(request, response);
	}

}
