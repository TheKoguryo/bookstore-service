package com.example.bookstore.entities;

import java.io.Serializable;
import java.time.LocalDate;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.AccessMode;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "books")
public class Book implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Schema(accessMode = AccessMode.READ_ONLY)
    private Integer id;

    private String title;
    private String authors;
    private Float average_rating;
    private String isbn;
    private String isbn13;
    private String language_code;
    private int num_pages;
    private int ratings_count;
    private int text_reviews_count;

    private LocalDate publication_date;
    private String publisher;
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getAuthors() {
        return authors;
    }
    public void setAuthors(String authors) {
        this.authors = authors;
    }
    public Float getAverage_rating() {
        return average_rating;
    }
    public void setAverage_rating(Float average_rating) {
        this.average_rating = average_rating;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getIsbn13() {
        return isbn13;
    }
    public void setIsbn13(String isbn13) {
        this.isbn13 = isbn13;
    }
    public String getLanguage_code() {
        return language_code;
    }
    public void setLanguage_code(String language_code) {
        this.language_code = language_code;
    }
    public int getNum_pages() {
        return num_pages;
    }
    public void setNum_pages(int num_pages) {
        this.num_pages = num_pages;
    }
    public int getRatings_count() {
        return ratings_count;
    }
    public void setRatings_count(int ratings_count) {
        this.ratings_count = ratings_count;
    }
    public int getText_reviews_count() {
        return text_reviews_count;
    }
    public void setText_reviews_count(int text_reviews_count) {
        this.text_reviews_count = text_reviews_count;
    }
    public LocalDate getPublication_date() {
        return publication_date;
    }
    public void setPublication_date(LocalDate publication_date) {
        this.publication_date = publication_date;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    
}
