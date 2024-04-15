package com.reva.tms.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reva.tms.bean.Trainee;

import reva.com.tms.service.TraineeService;

/**
 * Servlet implementation class TraineeServlet
 */
public class TraineeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraineeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		String target = "";
		TraineeService service = new TraineeService();

		if (action.equals("Login")) {
			String uname = request.getParameter("username");
			String pwd = request.getParameter("pwd");
			boolean flag = service.validateUser(uname, pwd);
			if (flag) {
				HttpSession sn = request.getSession();

				sn.setAttribute("uname", uname);
				target = "home.jsp";
				RequestDispatcher rd1 = request.getRequestDispatcher(target);
				rd1.forward(request, response);
			} else {
				target = "unsuccessfull.jsp";
				RequestDispatcher rd1 = request.getRequestDispatcher(target);
				rd1.forward(request, response);
			}
		} else {

			switch (action) {

			case "Add Trainee":
				int traineeid = Integer.parseInt(request.getParameter("traineeid"));
				String traineename = request.getParameter("traineename");
				String traineelocation = request.getParameter("traineelocation");
				String traineedomain = request.getParameter("traineedomain");
				Trainee addtrainee = new Trainee(traineeid, traineename, traineelocation, traineedomain);
				boolean addflag=service.addtrainee(addtrainee);
				if (addflag) {
			        request.setAttribute("addMessage", "Trainee Added successfully.");
			    }
				target = "Add.jsp";
				break;

			case "Delete":
				int traineeid2 = Integer.parseInt(request.getParameter("traineeid"));
				boolean cnt = service.deletetrainee(traineeid2);
				if (cnt) {
			        request.setAttribute("deleteMessage", "Trainee deleted successfully.");
			    }
				target = "Delete.jsp";
				break;

			case "Modify":
				int traineeid1 = Integer.parseInt(request.getParameter("traineeid"));
				String traineename1 = request.getParameter("traineename");
				String traineelocation1 = request.getParameter("traineelocation");
				String traineedomain1 = request.getParameter("traineedomain");
				Trainee modtrainee = new Trainee(traineeid1, traineename1, traineelocation1, traineedomain1);
				boolean flag = service.updatetrainee(modtrainee);
				if (flag) {
			        request.setAttribute("modifyMessage", "Trainee Modified successfully.");
			    }
				target = "Modify.jsp";
				break;

			case "Retrieve":
				int traineeid3 = Integer.parseInt(request.getParameter("traineeid"));
				Trainee p = service.retrievetrainee(traineeid3);
				request.setAttribute("trainee", p);
				target = "RetrievedInfo.jsp";
				break;

			case "RetrieveAll":
				ArrayList<Trainee> tList = service.retrieveall();
				request.setAttribute("tList", tList);
				target = "RetrieveAll.jsp";
				break;
			}
			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
