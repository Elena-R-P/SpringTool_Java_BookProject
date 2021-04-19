package com.ponomareva.bookproject.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ponomareva.bookproject.models.Book;
import com.ponomareva.bookproject.services.BookService;

@Controller
public class MainController {
	private final BookService bookService;
	
	public MainController(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/books";
	}
	@RequestMapping("/books")
	public String allbooks(Model model) {
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		return "index.jsp";
	}
	@RequestMapping("/books/new")
	public String newBook(Model model) {
		model.addAttribute("book", new Book());
		return "new.jsp";
	}
	@RequestMapping(value="/books", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("book") Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
            bookService.createBook(book);
            return "redirect:/books";
        }
    }
	@RequestMapping("/books/show/{id}")
	public String show(
			@PathVariable("id") Long id,
			Model model) {
		model.addAttribute("book", bookService.findBook(id));
		return "show.jsp";
	}
// ====================================================================
// EDIT
// ====================================================================
	@RequestMapping("/books/edit/{id}")
	public String editBook(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.findBook(id));
		return "edit.jsp";
	}
	@RequestMapping(value="/books/edit/{id}", method=RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if (result.hasErrors()) {
			return "edit.jsp";
		} else {
			bookService.updateBook(book);
			return "redirect:/books";
		}
	}
// ====================================================================
// DELETE
// ====================================================================
	@RequestMapping(value="/books/{id}", method=RequestMethod.DELETE)
    public String destroy(@PathVariable("id") Long id) {
        bookService.deleteBook(id);
        return "redirect:/books";
    }
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
