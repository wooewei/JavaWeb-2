package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutService extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 清除session 資料
		HttpSession session = req.getSession(false);
		if(session != null) {
			session.invalidate(); // 清除 session 資訊
		}
		// 外部重導到 login 
		// 由瀏覽器自動調用 GET/JavaWeb/login 請求
		// resp.sendRedirect("/JavaWeb/login");
		
		// 內部重導到 result.jsp
		req.setAttribute("message", "登出成功");
		req.getRequestDispatcher("/WEB-INF/view/result.jsp").forward(req, resp);
	}

}
