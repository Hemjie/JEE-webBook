package com.formation.webBooks;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.formation.webBooks.entities.BookEntity;
import com.formation.webBooks.HibernateUtils;

@WebServlet("/")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Session session = null;
	private static List<BookEntity> recentBooks = null;
	
	private String connect;
	
	@Override
	public void init() throws ServletException {
		super.init();
		session = HibernateUtils.getSession();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(recentBooks == null) {
			recentBooks = findMostRecent();
		}
		
		
		if(connect == null) {
			connect = "0";
		} else {
			connect = request.getParameter("connect");
		}
		
		request.setAttribute("recentBooks", recentBooks);
		request.setAttribute("title", "Home");
		request.setAttribute("page", "home");
		request.setAttribute("connect", connect);
		System.out.println("connect : " + connect);
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
	
	private List<BookEntity> findMostRecent() {
		Query<BookEntity> q = session.createQuery("from BookEntity order by published_date desc", BookEntity.class);
		q.setFirstResult(0);
		q.setMaxResults(6);
		
		List<BookEntity> recentBooks = q.list();

		recentBooks.forEach(System.out::println);
		
		return recentBooks;

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String user = request.getParameter("user");
		
		if (user.trim().length() < 4) {
			request.setAttribute("error", "V?rifie le champ texte. Il doit avoir au minimum 4 caract?res");
			doGet(request, response);
			return;
		} 
		
		HttpSession session = request.getSession();		
		session.setAttribute("user", user);
		doGet(request, response);
	}

	
	@Override
	public void destroy() {
		session.close();
		super.destroy();
	}


}
