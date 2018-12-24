package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import dao.ViecLamDAO;
import model.ViecLam;
import java.util.*;
/**
 * Servlet implementation class timKiemViecLam
 */
public class timKiemViecLam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public timKiemViecLam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 String timKiem = request.getParameter("timKiem");
	     List<ViecLam> list;

	     if (timKiem != null) {
	         list = new ViecLamDAO().timKiemViecLam(timKiem);
	     } else {
	         list = new ViecLamDAO().tatCaViecLam();
	     }
		
	     request.setAttribute("listViecLamTimKiem", list);
	     request.getRequestDispatcher("timkiemvieclam.jsp").forward(request, response);
	     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	     
		doGet(request, response);
	}

}
