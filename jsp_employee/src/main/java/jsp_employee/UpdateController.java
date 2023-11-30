package jsp_employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/update")
public class UpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		EmployeeCRUD crud=new EmployeeCRUD();
		 try {
			Employee employee= crud.getEmployeeById(id);
			if (employee!=null) {
				//validating Session
				HttpSession httpSession = req.getSession();
				System.out.println(httpSession);//It will print the object ref.for the httpSession..
				String email = (String) httpSession.getAttribute("session");
				if(email!=null) {
					req.setAttribute("emp", employee);
					RequestDispatcher dispatcher = req.getRequestDispatcher("edit.jsp");
					dispatcher.forward(req, resp);
				}
				else {
					req.setAttribute("message", "Session doesn't exist,Plaease login..!");
					RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
					dispatcher.forward(req, resp);
				}
				
				
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
