package controller;
import dao.libroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.libroDTO;
/**
*
* @author CARLOMAGNO
*/
public class Control extends HttpServlet {
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
String accion=request.getParameter("accion");
try (PrintWriter out = response.getWriter()) {
if (accion.equals("Listar")){
libroDAO ldao=new libroDAO();
RequestDispatcher rd = request.getRequestDispatcher("Listado.jsp");
request.setAttribute("Listado", ldao.readAll());
rd.forward(request, response);
}
if (accion.equals("borrar")) {
libroDAO ldao = new libroDAO();
int clave=Integer.parseInt( request.getParameter("clave"));
ldao.delete(clave);
RequestDispatcher rd = request.getRequestDispatcher("Listado.jsp");
request.setAttribute("Listado", ldao.readAll());
rd.forward(request, response);
}
if (accion.equals("crear")) {
libroDAO ldao = new libroDAO();
libroDTO l=new libroDTO();
int clave=Integer.parseInt( request.getParameter("libro_id"));
String titulo=request.getParameter("titulo");
String autor=request.getParameter("autor");
float precio=Float.parseFloat(request.getParameter("precio"));
l.setLibro_id(clave);
l.setTitulo(titulo);
l.setAutor(autor);
l.setPrecio(precio);
ldao.create(l);
RequestDispatcher rd = request.getRequestDispatcher("Listado.jsp");
request.setAttribute("Listado", ldao.readAll());
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