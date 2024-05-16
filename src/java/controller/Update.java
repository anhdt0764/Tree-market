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
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author ducnk
 */
public class Update extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Update</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Update at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        DAO dao = new DAO();
        String pId = request.getParameter("id");
        List<Category> listCategory ;
        listCategory = dao.getCategory();
        int id = Integer.parseInt(pId);
        Product p = dao.getProductById(id);
        request.setAttribute("p", p);
        request.setAttribute("listC", listCategory);
        request.getRequestDispatcher("update.jsp").forward(request, response);
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
        try {
            String name = request.getParameter("Name");
            String price = request.getParameter("Price");
            String id = request.getParameter("Id");
            String inputImg = request.getParameter("inputImg");
            String inputCate = request.getParameter("inputCate");
            String des = request.getParameter("des");
            String pQuantity = request.getParameter("quantity");
            float pPrice = Float.parseFloat(price);
            int pid,pCId,quantity;
            pid = Integer.parseInt(id);
            pCId = Integer.parseInt(inputCate);
            quantity = Integer.parseInt(pQuantity);
            Product p = new Product(pid, name, pCId, des, inputImg, pPrice, quantity);
            DAO dao = new DAO();
            int check = dao.editProduct(p);
            
            if(check<0){
                request.setAttribute("mess", "Chỉnh sửa không thành công");
            }else{
                request.setAttribute("mess", "Chỉnh sửa thành công");
            }
            
            request.getRequestDispatcher("admin").forward(request, response);
        } catch (Exception e) {
        }
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
