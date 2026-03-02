/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BookDAO;
import model.BookDTO;

/**
 *
 * @author caonh
 */
public class BookController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doSearch(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String keywords = request.getParameter("keywords");
        if (keywords == null) {
            keywords = "";
        }
        BookDAO bdao = new BookDAO();
        List<BookDTO> list;
        list = bdao.getAllBook();
        if (keywords.trim().length() > 0) {
            list = bdao.FilterBookName(keywords);
        }
        request.setAttribute("keywords", keywords);
        request.setAttribute("list", list);
        String url = "search.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
//       protected void doDelete(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html;charset=UTF-8");
//        String keywords = request.getParameter("keywords");
//        String id = request.getParameter("id");
//        BookDAO bdao = new BookDAO();
//        if (keywords == null) {
//            keywords = "";
//        }
//        if (id == null) {
//            id = "";
//        }
//
//        // Xoa
//        if (!id.isEmpty()) {
//            boolean check = bdao.softDelete(Integer.parseInt(id));
//            if (check) {
//                request.setAttribute("msg", "Deleted!");
//            } else {
//                request.setAttribute("msg", "Error, can not delete: " + id);
//            }
//        }
//
//        // Tim kiem
//        List<BookDTO> list;
//        if (keywords.trim().length() > 0) {
//            list = bdao.searchBook(keywords);
//        } else {
//            list = bdao.getAllBook();
//        }
//        request.setAttribute("list", list);
//        request.setAttribute("keywords", keywords);
//        String url = "search.jsp";
//        RequestDispatcher rd = request.getRequestDispatcher(url);
//        rd.forward(request, response);
//    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "searchBook":
                doSearch(request, response);
                break;

            case "deleteBook":
                doDelete(request, response);
                break;

            default:
                response.sendRedirect("search.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
