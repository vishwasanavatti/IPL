package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;
import Bean.FixtureBean;
import Bean.ResultBean;
import java.util.ArrayList;
/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DAO d=new DAO();
		String action=request.getParameter("action2");
		if(action.equals("Results"))
		{
		 ArrayList<FixtureBean> a1=d.viewResult();
		 RequestDispatcher rd=request.getRequestDispatcher("previousResult.jsp");
		for (FixtureBean c:a1)
		{
			System.out.println(c.getBet_amt());
		}
		 
		 request.setAttribute("result",a1);
		rd.forward(request,response);
		}
		else
		{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
