package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.mon;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class ALL
 */
@WebServlet("/ALL")
public class ALL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ALL() {
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
		request.setAttribute("SoDienThoai", sodienthoai);
		request.setAttribute("TenKhach", tenkhach);
	       
        List<mon> list1 = null;
        try {
            list1 = DBUtils.listMon(conn);
            System.out.println("Danh sach 30 mon");
            
        } 
        catch (SQLException e) {
        	System.out.println("listMon faile!");
            e.printStackTrace();
        }

       request.setAttribute("LIST1", list1);
         
        // Forward sang /WEB-INF/views/productListView.jsp
        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/ALL.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String sodienthoai = (String)request.getParameter("SoDienThoai");
		String tenkhach = (String)request.getParameter("TenKhach");
		request.setAttribute("SoDienThoai", sodienthoai);
		request.setAttribute("TenKhach", tenkhach);
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/ALL.jsp");
        dispatcher.forward(request, response);
		
	}

}
