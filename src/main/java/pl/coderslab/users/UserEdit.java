package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User userToUpdate = new User();
        userToUpdate.setId(Integer.parseInt(id));
        userToUpdate.setUserName(userName);
        userToUpdate.setEmail(email);
        userToUpdate.setPassword(password);
        userDAO.update(userToUpdate);
        System.out.println("User "+ userName+" updated");
        response.sendRedirect(request.getContextPath() + "/user/list");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDAO userDAO = new UserDAO();
        User user = userDAO.showUser(Integer.parseInt(id));
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/user/edit.jsp")
                .forward(request, response);

    }
}
