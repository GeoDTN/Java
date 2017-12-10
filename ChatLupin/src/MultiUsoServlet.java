
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "Servlet per la gestione della chat.", urlPatterns = { "/MultiUsoServlet" })
public class MultiUsoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MultiUsoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		super.doGet(request, response);
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dispatcher = request.getParameter("dispatcher");
		/*
		 * Accedo al context della servlet per recuperare le informazioni sugli
		 * utenti
		 */
		HashSet<String> users = (HashSet<String>) request.getServletContext().getAttribute("Array_utenti");
		/* Prelevo l'utente inserito nel DOM */
		String user = request.getParameter("username");
		/* Prelevo la pssword inserita nel DOM */
		String password = request.getParameter("password");
		/*
		 * Accedo al context della servlet per recuperare i messaggi scritti
		 * dagli utenti
		 */
		ArrayList<String> messages = (ArrayList<String>) request.getServletContext().getAttribute("Messages");

		if (dispatcher != null && dispatcher.equals("pagina-login")) {
			/* Operazioni sulla pagina della login */
			if (password == null || (password != null && !password.equals("CIAO"))) {
				/*
				 * Setta l'attricuto ERRORKEY a 1, nello specifico indica errore
				 * password
				 */
				request.getSession().setAttribute("ERRORKEY", 1);
				/* Viene richiamata la pagina login.jsp */
				response.sendRedirect("login.jsp");
				return;
			}
			if (users == null) {
				users = new HashSet<>();
				request.getServletContext().setAttribute("Array_utenti", users);
			}
			if (user != null && !user.equals("")) {
				if (users.contains(user)) {
					/* Errore utente gia' loggato */
					request.getSession().setAttribute("ERRORKEY", 2);
					response.sendRedirect("login.jsp");
					return;
				}
				request.getSession().setAttribute("user", user);
				users.add(user);
				response.sendRedirect("home.jsp");
			} else {
				/* Errore utente inseriro e' vuoto o nullo */
				request.getSession().setAttribute("ERRORKEY", 3);
				response.sendRedirect("login.jsp");
				return;
			}
		} else {
			if (dispatcher != null && dispatcher.equals("pagina-home")) {
			/* Gestione messaggi */
				if(messages == null) {
					messages = new ArrayList<>();
					request.getServletContext().setAttribute("Messages", messages);
				}
				String mex = request.getParameter("invia_messaggi");
				if(mex != null && !mex.equals("")) {
					messages.add(request.getSession().getAttribute("user") + "--> " + mex);
				}
				response.sendRedirect("home.jsp");
			}
		}
	}
}
