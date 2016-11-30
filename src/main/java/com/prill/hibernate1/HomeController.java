package com.prill.hibernate1;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		//get the list of books from DAO
		List<Book> books = DAO.getAllBooks();
		
		//add this list to the model
		model.addAttribute("bookList", books);
		
		return "list";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String enroll(Model model, 
			HttpServletRequest request) {
	
		model.addAttribute("Title", request.getParameter("title"));
		model.addAttribute("Author", request.getParameter("author"));
		model.addAttribute("Sales", request.getParameter("sales"));
		model.addAttribute("Imprint", request.getParameter("imprint"));
		model.addAttribute("Publisher", request.getParameter("publisher"));
		model.addAttribute("YearPublished", request.getParameter("yearPublished"));
		model.addAttribute("Genre", request.getParameter("genre"));
		model.addAttribute("Status", 0);
		model.addAttribute("Borrower", 0);
		
		
		
		String Title = request.getParameter("title");
		String Author = request.getParameter("author");
		String Sales2 = request.getParameter("sales");
		String Imprint = request.getParameter("imprint");
		String Publisher = request.getParameter("publisher");
		String YearPublished2 = request.getParameter("yearPublished");
		String Genre = request.getParameter("genre");
		int Status = 0;
		int Borrower = 0;
		
		int Sales = Integer.parseInt(Sales2);
		
		int YearPublished = Integer.parseInt(YearPublished2);
		
		Book b = new Book();
		b.setTitle(Title);
		b.setAuthor(Author);
		b.setSales(Sales);
		b.setImprint(Imprint);
		b.setPublisher(Publisher);
		b.setYearPublished(YearPublished);
		b.setGenre(Genre);
		b.setStatus(Status);
		b.setBorrower(Borrower);
		
		DAO.addBook(b);
		return "bookAdded";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Model model, 
			HttpServletRequest request, @RequestParam(value="rank") int rank) {
		 
	DAO.deleteBook(rank);
	return "Removed";
	}
}
