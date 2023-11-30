package jsp_employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")

public class SignUpController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id =Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		long phone = Long.parseLong(req.getParameter("phone"));
		String address=req.getParameter("address");
		String emial=req.getParameter("email");
		String password=req.getParameter("password");
		
		Employee employee =new Employee();
		employee.setId(id);
		employee.setName(name);
		employee.setPhone(phone);
		employee.setAddress(address);
		employee.setEmail(emial);
		employee.setPassword(password);
		
		EmployeeCRUD crud = new EmployeeCRUD();
		
		try {
			int result = crud.signUp(employee);
			if (result != 0) {
					req.setAttribute("message", "SignUp Successful,Please Login..");
				  RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				  dispatcher.forward(req, resp);
				 
				/*
				 * resp.sendRedirect("login.jsp");
				 *///				  Move from one page to another page and also move form third party website/page...
				 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
