package com.example.bookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.bookstore.entities.Book;
import com.example.bookstore.logging.LogExecutionTime;
import com.example.bookstore.services.BookService;

@RestController
@RequestMapping("api/books")
public class BookController {

    @Autowired
    private BookService bookService;

    @PostMapping
    public ResponseEntity<Book> createBook(@RequestBody Book book) {
        Book createdBook = bookService.createBook(book);

        return new ResponseEntity<>(createdBook, HttpStatus.CREATED);
    }

    @GetMapping("{id}")
    @LogExecutionTime
    public ResponseEntity<Book> getBookById(@PathVariable("id") Integer bookId) {
        Book book = bookService.getBookById(bookId);

        return new ResponseEntity<>(book, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<List<Book>> getAllBooks() {
        List<Book> bookList = bookService.getAllBooks();

        return new ResponseEntity<>(bookList, HttpStatus.OK);
    }

    @PutMapping("{id}")
    public ResponseEntity<Book> updateBook(@PathVariable("id") Integer bookId, @RequestBody Book book) {
        book.setId(bookId);
        Book updatedBook = bookService.updateBook(book);

        return new ResponseEntity<>(updatedBook, HttpStatus.OK);
    }

    @DeleteMapping("{id}")
    public ResponseEntity<String> deleteBook(@PathVariable("id") Integer bookId) {
        bookService.deleteBook(bookId);

        return new ResponseEntity<>("Book - " + bookId + " was deleted successfully", HttpStatus.OK);
    }

}
