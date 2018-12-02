/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.* ; 
import javax.servlet.http.HttpSession;

/**
 *
 * @author winayak
 */
@WebServlet(urlPatterns = {"/booking"})
public class booking extends HttpServlet {

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
                HttpSession session = request.getSession();
                String user = session.getAttribute("user").toString();  
                String fname = request.getParameter("fname");  
                int phone = Integer.parseInt(request.getParameter("phone"));  
                String email = request.getParameter("email");  
                int children = Integer.parseInt(request.getParameter("children"));  
                int family = Integer.parseInt(request.getParameter("family"));  
                String desc = request.getParameter("desc");  
                String apartment = request.getParameter("apartment");  
                out.println("hell");
                Class.forName("org.apache.derby.jdbc.ClientDriver");  
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/apartments","kajal","qwerty");  
                Statement stmt = con.createStatement();    
                int flag= 0;
                String query = "select * from apartment where name='"+apartment+"'";
                out.println("hell");
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    if(session.getAttribute("user")!=null){
                        if(rs.getString("Availability").equals("booked")){
                            out.println("this apartment is already booked");
                        }
                        else{
                            String query2 = "insert into booked(name,fname,phone,email,family,children,description,apartment) values('"+user+"','"+fname+"',"+phone+",'"+email+"',"+family+","+children+",'"+desc+"','"+apartment+"')";                
                            stmt.executeUpdate(query2);
                            String query3 = "update apartment set availability='booked' where name ='"+apartment+"'";
                            stmt.executeUpdate(query3);
                            out.println(query3);
                            response.sendRedirect("booking.jsp");
                        }
                    }
                    else{
                        out.println("pls log in");
                    }
                }
            }
        catch(Exception e){}
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
