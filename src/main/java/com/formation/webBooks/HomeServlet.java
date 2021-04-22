package com.formation.webBooks;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.formation.webBooks.entities.BookEntity;
import com.formation.webBooks.HibernateUtils;

@WebServlet("/")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Session session = null;
	private static List<BookEntity> books = null;
	
	@Override
	public void init() throws ServletException {
		super.init();
		session = HibernateUtils.getSession();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(books == null) {
			findMostRecent();
		}
		
		request.setAttribute("title", "Home");
		request.setAttribute("page", "home");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
	
	private void findMostRecent() {
		Query<BookEntity> q = session.createQuery("from BookEntity order by published_date desc limit 6", BookEntity.class);
		
		List<BookEntity> books = q.list();

        books.forEach(System.out::println);
	}

}
