/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;

/**
 *
 * @author ducnk
 */
public class SignUp extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            String user = request.getParameter("reg_username");
            String name = request.getParameter("reg_name");
            String pass = request.getParameter("reg_password");
            String repass = request.getParameter("reg_repassword");
            String modat=".*[^a-zA-Z0-9 ].*";
            DAO dao = new DAO();
            if(!pass.equals(repass)||user.matches(modat)){
                request.setAttribute("mess", "Không thể đăng kí");
                request.getRequestDispatcher("home").forward(request, response);
            }else{
                
                account a = new account(user, pass, 0, name, 0);
                account b = dao.getAccount(user, pass);
                if(b==null){
                   dao.signup(a);
                request.setAttribute("mess", "Bạn đã đăng kí thành công");
                request.getRequestDispatcher("home").forward(request, response); 
                }else{
                    request.setAttribute("mess", "Tài khoản đã tồn tại");
                request.getRequestDispatcher("home").forward(request, response);
                }
                
            }
        } catch (Exception e) {
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
