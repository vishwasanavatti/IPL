package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.FixtureBean;
import DAO.DAO;

/**
 * Servlet implementation class FixtureServlet
 */
@WebServlet("/FixtureServlet")
public class FixtureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FixtureServlet() {
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
		String action=request.getParameter("action1");
		if(action.equals("Fixture"))
		{
		 ArrayList<FixtureBean> a1=d.Fixture();
		 for(FixtureBean e:a1)
		 {
			 System.out.println(e.getMatch_no()+""+e.getMatch_date()+""+e.getFixture()+""+e.getVenue());
		 }
		 RequestDispatcher rd=request.getRequestDispatcher("Fixture.jsp");
			request.setAttribute("data1",a1);
			rd.forward(request,response);
		}
	}
}
