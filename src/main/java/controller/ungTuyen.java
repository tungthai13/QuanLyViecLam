package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HoSoDAO;
import model.HoSo;
import model.NguoiDung;

/**
 * Servlet implementation class ungTuyen
 */
public class ungTuyen extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ungTuyen() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		NguoiDung user = (NguoiDung) session.getAttribute("user");
		
		System.out.println(user.getNgaySinh());
		String idViecLam = request.getParameter("idViecLam");
		
		HoSo hoso = new HoSo();
		
		hoso.setHoTen(user.getHoTen());
		hoso.setNgaySinh(user.getNgaySinh());
		hoso.setEmail(user.getEmail());
		hoso.setSdt(user.getSdt());
		hoso.setCv(user.getCv());
		hoso.setNoiDungUngTuyen(user.getViTriUngTuyen());
		hoso.setIdUser(user.getIdUser());
		hoso.setIdViecLam(Integer.parseInt(idViecLam));
		
		new HoSoDAO().ungTuyenCoDangNhap(hoso);
		request.getRequestDispatcher("ungtuyenthanhcong.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
