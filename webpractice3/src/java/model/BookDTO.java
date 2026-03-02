/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author caonh
 */
@Entity
@Table(name = "tblBooks")
public class BookDTO {
    @Id
      private int book_id ;
    private String book_title;
    private String Author;
    private String Category;
    private String Status;
    private int published_year;

    public BookDTO() {
    }

    public BookDTO(int book_id, String book_title, String Author, String Category, String Status, int published_year) {
        this.book_id = book_id;
        this.book_title = book_title;
        this.Author = Author;
        this.Category = Category;
        this.Status = Status;
        this.published_year = published_year;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getBook_title() {
        return book_title;
    }

    public void setBook_title(String book_title) {
        this.book_title = book_title;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public int getPublished_year() {
        return published_year;
    }

    public void setPublished_year(int published_year) {
        this.published_year = published_year;
    }
    
}
