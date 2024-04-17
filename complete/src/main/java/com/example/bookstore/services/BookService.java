package com.example.bookstore.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.example.bookstore.entities.Book;
import com.example.bookstore.repositories.BookRepository;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public Book createBook(Book book) {
        return bookRepository.save(book);
    }

    @Cacheable(value = "books", key = "#bookId")
    public Book getBookById(Integer bookId) {
        Optional<Book> optionalBook = bookRepository.findById(bookId);

        return optionalBook.get();
    }

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    @CachePut(value = "books", key = "#book.id")
    public Book updateBook(Book book) {
        /*
        Book existingBook = bookRepository.findById(book.getId()).get();

        existingBook.setTitle(book.getTitle());
        existingBook.setAuthors(book.getAuthors());
        existingBook.setAverage_rating(book.getAverage_rating());
        existingBook.setIsbn(book.getIsbn());
        existingBook.setIsbn13(book.getIsbn13());
        existingBook.setLanguage_code(book.getLanguage_code());
        existingBook.setNum_pages(book.getNum_pages());
        existingBook.setRatings_count(book.getRatings_count());
        existingBook.setText_reviews_count(book.getText_reviews_count());
        existingBook.setPublication_date(book.getPublication_date());
        existingBook.setPublisher(book.getPublisher());
        */
        Book updatedBook = bookRepository.save(book);

        return updatedBook;
    }
    
    @CacheEvict(value = "books", key = "#bookId")
    public void deleteBook(Integer bookId) {
        bookRepository.deleteById(bookId);
    }
}
