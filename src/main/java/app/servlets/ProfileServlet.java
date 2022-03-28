package app.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
/**
 * @author SvyatoslavK
 * Servlet страницы профиля клиента
 * Mapping прописан в @WebServlet
 * */
@WebServlet("/profileview")
public class ProfileServlet extends HttpServlet {
    /**
     *метод doGet отправляет страницу rrofileview.jsp
     * */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/profileview.jsp");
        requestDispatcher.forward(req, resp);
    }
}
