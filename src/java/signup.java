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
 * @author lenovo
 */
@WebServlet(urlPatterns = {"/signup"})
public class signup extends HttpServlet {

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
            String user = request.getParameter("name");              
            String password = request.getParameter("pwd");  
            Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/apartments","kajal","qwerty");  
            Statement stmt = con.createStatement();      
            String query = "insert into login_credentials(username,password) values('"+user+"','"+password+"')";             
            String query2 = "select * from login_credentials"; 
            ResultSet rs = stmt.executeQuery(query2);
            HttpSession session = request.getSession();
            int count =0;
            int flag =0;
            while(rs.next()){
                if(user.equals(rs.getString(1))){
                    count++;                    
                    out.println("username already exists!!");
                    break;
                    
                }
            }            
            if(count==0){
                int i = stmt.executeUpdate(query);
                flag =1; 
                out.println("success");
            }                        
            if(flag!=1 && count!=1){  
                out.println("failed to insert the data!!");
            }  
        }
        catch(Exception e){ System.out.println(e);}  
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        processRequest(request, response);        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        processRequest(request, response);        
    }
}