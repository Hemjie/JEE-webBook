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

@WebServlet("/one_book")
public class OneBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Session session = null;
	
	@Override
	public void init() throws ServletException {
		super.init();
		session = HibernateUtils.getSession();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idBook = request.getParameter("id");

		BookEntity oneBook = findById(idBook);
		
		request.getSession().setAttribute("user", "toto");
		
		request.setAttribute("oneBook", oneBook);
		request.setAttribute("title", "One Book");
		request.setAttribute("page", "one_book");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
	
	private BookEntity findById(String idBook) {
		Query<BookEntity> q = session.createQuery("from BookEntity where id = :idBook", BookEntity.class);

		q.setParameter("idBook", idBook);

        BookEntity oneBook = q.uniqueResult();
		
        System.out.println(oneBook);
		return oneBook;

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	@Override
	public void destroy() {
		session.close();
		super.destroy();
	}
}
