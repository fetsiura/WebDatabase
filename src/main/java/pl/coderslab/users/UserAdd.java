package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (!userName.isEmpty() & !email.isEmpty() & !password.isEmpty()) {
            UserDAO userDAO = new UserDAO();
            User user = new User();
            user.setUserName(userName);
            user.setEmail(email);
            user.setPassword(password);
            userDAO.create(user);
            System.out.println("User "+ userName+" created");
            response.sendRedirect(request.getContextPath() + "/user/list");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/user/add.jsp")
                .forward(request, response);
    }
}
