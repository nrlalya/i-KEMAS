/* 
    Document   : LogMasukAkaunIbuBapaAtauPenjagaServlet.java
 */

package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import dao.LogMasukAkaunIbuBapaAtauPenjagaDAO;
import javax.servlet.annotation.WebServlet;
import model.IbuBapaAtauPenjaga;

@WebServlet("/controller/LogMasukAkaunIbuBapaAtauPenjagaServlet")
public class LogMasukAkaunIbuBapaAtauPenjagaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Halang cache supaya user tak boleh back ke page lama
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        // Ambil input dari form
        String emelAkaun = request.getParameter("emelAkaun");
        String kataLaluanAkaun = request.getParameter("kataLaluanAkaun");
        String ingatSaya = request.getParameter("ingatSaya");

        // Hash password untuk keselamatan
        String hashedPassword = hashPassword(kataLaluanAkaun);

        // Check login melalui DAO
        LogMasukAkaunIbuBapaAtauPenjagaDAO dao = new LogMasukAkaunIbuBapaAtauPenjagaDAO();
        IbuBapaAtauPenjaga ibp = dao.checkLogin(emelAkaun, hashedPassword);

        if (ibp != null) {
            // Login berjaya → simpan session
            HttpSession session = request.getSession();
            session.setAttribute("user", ibp);

            // Ingat saya → simpan cookie
            if (ingatSaya != null) {
                Cookie cookie = new Cookie("userEmail", emelAkaun);
                cookie.setMaxAge(60 * 60 * 24 * 7); // 7 hari
                response.addCookie(cookie);
            }

            // Redirect ke dashboard
            response.sendRedirect(request.getContextPath() + "/DashboardAkaunIbuBapaAtauPenjaga.jsp?status=success");
        } else {
            // Login gagal → kembali ke log masuk dengan status error
            response.sendRedirect(request.getContextPath() + "/LogMasukAkaunIbuBapaAtauPenjaga.jsp?status=error");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}