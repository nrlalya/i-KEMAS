/* 
    Document   : DaftarAkaunIbuBapaAtauPenjagaServlet.java
 */

package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import model.IbuBapaAtauPenjaga;
import dao.DaftarAkaunIbuBapaAtauPenjagaDAO;

@WebServlet("/controller/DaftarAkaunIbuBapaAtauPenjagaServlet")
public class DaftarAkaunIbuBapaAtauPenjagaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Halang cache supaya user tak boleh tekan back ke page lama
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        // Ambil input dari form daftar
        String emelAkaun = request.getParameter("emelAkaun");
        String kataLaluanAkaun = request.getParameter("kataLaluanAkaun");
        String pengesahanKataLaluanAkaun = request.getParameter("pengesahanKataLaluanAkaun");

        // Validasi kata laluan (pastikan sama dengan pengesahan)
        if (!kataLaluanAkaun.equals(pengesahanKataLaluanAkaun)) {
            response.sendRedirect(request.getContextPath() + "/DaftarAkaunIbuBapaAtauPenjaga.jsp?status=error");
            return;
        }

        // Panggil DAO untuk check emel
        DaftarAkaunIbuBapaAtauPenjagaDAO dao = new DaftarAkaunIbuBapaAtauPenjagaDAO();

        // Check jika emel sudah wujud dalam DB
        if (dao.emailExists(emelAkaun)) {
            response.sendRedirect(request.getContextPath() + "/DaftarAkaunIbuBapaAtauPenjaga.jsp?status=warning");
            return;
        }

        // Hash kata laluan (SHA-256) untuk keselamatan
        String hashedPassword = hashPassword(kataLaluanAkaun);

        // Buat object model untuk simpan data user
        IbuBapaAtauPenjaga ibp = new IbuBapaAtauPenjaga();
        ibp.setEmelAkaun(emelAkaun);
        ibp.setKataLaluanAkaun(hashedPassword);

        // Simpan ke DB melalui DAO
        boolean success = dao.addIbuBapaAtauPenjaga(ibp);

        // Redirect berdasarkan status simpan
        if (success) {
            // Jika berjaya → status success
            response.sendRedirect(request.getContextPath() + "/DaftarAkaunIbuBapaAtauPenjaga.jsp?status=success");
        } else {
            // Jika gagal → status error
            response.sendRedirect(request.getContextPath() + "/DaftarAkaunIbuBapaAtauPenjaga.jsp?status=error");
        }
    }

    // Method untuk hash kata laluan (SHA-256)
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b)); // convert ke hex
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing password", e);
        }
    }

    // Method doPost → panggil processRequest
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}