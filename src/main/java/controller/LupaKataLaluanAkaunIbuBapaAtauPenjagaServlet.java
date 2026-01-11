/* 
    Document   : LupaKataLaluanAkaunIbuBapaAtauPenjagaServlet.java
 */

package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.LupaKataLaluanAkaunIbuBapaAtauPenjagaDAO;

@WebServlet(name = "LupaKataLaluanAkaunIbuBapaAtauPenjagaServlet",
        urlPatterns = {"/LupaKataLaluanAkaunIbuBapaAtauPenjagaServlet"})
public class LupaKataLaluanAkaunIbuBapaAtauPenjagaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Halang cache supaya user tak boleh back ke page lama
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        // Ambil input dari form JSP
        String emelAkaun = request.getParameter("emelAkaun");
        String kataLaluanBaru = request.getParameter("kataLaluanAkaun");
        String pengesahanKataLaluan = request.getParameter("pengesahanKataLaluanAkaun");

        // Semak sama ada kata laluan baru dan pengesahan sama
        if (kataLaluanBaru == null || pengesahanKataLaluan == null || !kataLaluanBaru.equals(pengesahanKataLaluan)) {
            response.sendRedirect(request.getContextPath() + "/LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp?status=notMatch");
            return;
        }

        // Hash password baru
        String hashedPassword = hashPassword(kataLaluanBaru);

        // Update password melalui DAO
        LupaKataLaluanAkaunIbuBapaAtauPenjagaDAO dao = new LupaKataLaluanAkaunIbuBapaAtauPenjagaDAO();
        int result = dao.updatePassword(emelAkaun, hashedPassword);

        if (result == 1) {
            // Redirect ke log masuk dengan status success
            response.sendRedirect(request.getContextPath() + "/LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp?status=resetSuccess");
        } else if (result == 0) {
            // Emel tidak wujud dalam sistem
            response.sendRedirect(request.getContextPath() + "/LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp?status=invalidEmail");
        } else {
            // Ralat sistem
            response.sendRedirect(request.getContextPath() + "/LupaKataLaluanAkaunIbuBapaAtauPenjaga.jsp?status=resetError");
        }
    }

    // Fungsi hash password (SHA-256)
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing password", e);
        }
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

    @Override
    public String getServletInfo() {
        return "Servlet untuk proses Lupa Kata Laluan Akaun Ibu Bapa/Penjaga";
    }
}
