/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import model.BookDTO;
import utils.JPAUtils;

/**
 *
 * @author caonh
 */
public class BookDAO {
     public BookDTO searchById(int book_id){
        EntityManager em= JPAUtils.getEntityManager();
        try {
            return em.find(BookDTO.class, book_id);
        } finally {
            em.close();
        }
    }
     public List<BookDTO> searchBookName(String keywords){
         EntityManager em= JPAUtils.getEntityManager();
         List<BookDTO> list= null;
         try {
             String jpql=" SELECT b FROM BookDTO b " +
                     " WHERE b.book_title LIKE :kw" + " OR b.Author LIKE :kw ";
             list=em.createQuery(jpql,BookDTO.class).setParameter("kw", keywords).getResultList();
             
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             em.close();
         }
         return list;
     }
       public List<BookDTO> FilterBookName(String keywords){
         EntityManager em= JPAUtils.getEntityManager();
         List<BookDTO> list= null;
         try {
             String jpql=" SELECT b FROM BookDTO b " +
                     " WHERE b.book_title LIKE :kw " + " OR b.Author LIKE :kw ";
             list=em.createQuery(jpql, BookDTO.class).setParameter("kw", "%" + keywords + "%").getResultList();
             
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             em.close();
         }
         return list;
     }
      public List<BookDTO> getAllBook(){
         EntityManager em= JPAUtils.getEntityManager();
         List<BookDTO> list= null;
         String jpql=" SELECT b FROM BookDTO b ";
         try {
             list=em.createQuery(jpql, BookDTO.class).getResultList();
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             em.close();
         }
         return list;
     }
      public boolean softDelete( int book_id){
          EntityManager em= JPAUtils.getEntityManager();
          EntityTransaction tx=em.getTransaction();
          tx.begin();
          
//           u.setStatus(false);
          tx.commit();
          return true;
      }
      public boolean add(BookDTO b){
            EntityManager em= JPAUtils.getEntityManager();
          EntityTransaction tx=em.getTransaction();
          tx.begin();
          em.persist(b);
          tx.commit();
          return true;
      } 
      public boolean update(BookDTO b){
            EntityManager em= JPAUtils.getEntityManager();
          EntityTransaction tx=em.getTransaction();
          tx.begin();
          em.merge(b);
          tx.commit();
          return true;
      }
}
