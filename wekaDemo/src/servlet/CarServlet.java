package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import weka.CarTypePredection;

public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CarServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		double epa = Double.parseDouble(request.getParameter("epa").trim());
		double acceleration = Double.parseDouble(request.getParameter(
				"acceleration").trim());
		double hp = Double.parseDouble(request.getParameter("hp").trim());
		double speed = Double.parseDouble(request.getParameter("speed").trim());

		CarTypePredection test = new CarTypePredection();

		String result = "";
		try {
			result = test.wekaPredictValue(epa, acceleration, hp, speed);
			request.setAttribute("epa", epa);
			request.setAttribute("acceleration", acceleration);
			request.setAttribute("hp", hp);
			request.setAttribute("speed", speed);
			request.setAttribute("result", result);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/successful.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
