package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDao;
import model.Users;


@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UsersDao userDao = new 	UsersDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = request.getParameter("command");
		String url ="";
		Users users = new Users();
		HttpSession session = request.getSession();
		switch(command){
		case "insert":
			users.setUsername(request.getParameter("dk_username"));
			users.setPassword(request.getParameter("dk_pass"));
			users.setHovaten(request.getParameter("FullName"));
			//users.setNgaysinh(request.getParameter("NgaySinh"));
			//users.setGioitinh(request.getParameter("GioiTinh"));
			users.setDiachi(request.getParameter("DiaChi"));
			users.setQuequan(request.getParameter("QueQuan"));
			users.setSodt(request.getParameter("SoDT"));
			users.setEmail(request.getParameter("Email"));
			
			userDao.insertUser(users);
			/*HttpSession session2 = request.getSession();
			session2.setAttribute("user", users);*/
			url = "/index.jsp";
			break;
		case "login":
			users = userDao.login(request.getParameter("user_name"), request.getParameter("user_pass"));
			if(users !=null)
			{
				session.setAttribute("user", users);
				url ="/index.jsp";
			}else{
				session.setAttribute("loi", "Nhap sai id hoac pass");
				url ="/login.jsp";
			}
			break;
		case "logout":
			session.invalidate();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
