package jsp_employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

@WebServlet("/login")
public class LoginController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");//
		String password = req.getParameter("password");

		EmployeeCRUD crud =new EmployeeCRUD();
		try {
			String dbPassword = crud.loginEmployee(email);
			 RequestDispatcher dispatcher =null;
			if (dbPassword!=null)
			{
				if (dbPassword.equals(password)) {
					//Starting Session
					HttpSession httpSession =  req.getSession();
					httpSession.setAttribute("session", email);
					System.out.println(httpSession);
					
					//Creating Cookies
					Cookie cookie =new Cookie("userInfo", email);
					resp.addCookie(cookie);
					List<Employee> list = crud.getAllEmployees();
					req.setAttribute("list", list);
					dispatcher = req.getRequestDispatcher("welcome.jsp");
				}
				else {
					req.setAttribute("message", "Incorrect password..!");
					dispatcher = req.getRequestDispatcher("login.jsp");
					
				}
			}
			else {
				req.setAttribute("message", "User not found,Please register..");
				 dispatcher = req.getRequestDispatcher("signup.jsp");
				
			}
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

}
