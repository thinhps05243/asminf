/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customers;

/**
 *
 * @author Administrator
 */
public class ControllerCustomers extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            if (action.equals("Login")) {
                String username = request.getParameter("txtUsername");
                String pwd = request.getParameter("txtPwd");
                Customers a = new Customers();
                boolean exist = a.checkLogin(username, pwd);
                String url = "error.jsp";
                if (exist) {
                    url = "index.jsp";
                    HttpSession sesson = request.getSession(true);
                    sesson.setAttribute("USER", username);
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("tryAgain")) {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else if (action.equals("register")) {
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);
            } else if (action.equals("Register")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                String hoten = request.getParameter("txtName");
                String admin = request.getParameter("chkAdmin");
                boolean roles = false;
                if (admin != null) {
                    roles = true;
                }
                Customers login = new Customers();
                boolean result = login.insert(username, password, hoten, roles);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else if (action.equals("Search")) {
                String name = request.getParameter("txtSearch");
                Customers login = new Customers();
                Customers[] result = login.searchLastname(name);
                request.setAttribute("INFO", result);
                RequestDispatcher rd = request.getRequestDispatcher("showcustomers.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String username = request.getParameter("username");
                String name = request.getParameter("txtSearch");
                Customers login = new Customers();
                login.setUsername(username);
                boolean result = login.deleteRecord();
                String url = "ControllerCustomers?action=Search&txtSearch=" + name;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                String hoten = request.getParameter("txtName");
                String admin = request.getParameter("chkAdmin");
                boolean roles = false;
                if (admin != null) {
                    roles = true;
                }
                String name = request.getParameter("txtSearch");
                Customers login = new Customers(username, password, hoten, roles);
                boolean result = login.updateRecord();
                String url = "ControllerCustomers?action=Search&txtSearch=" + name;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Back")) {
                RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
                rd.forward(request, response);
            } else if (action.equals("Logout")) {
                HttpSession sesson = request.getSession(true);
                sesson.removeAttribute("USER");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
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
