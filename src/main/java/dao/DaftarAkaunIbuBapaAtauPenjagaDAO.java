/* 
    Document   : DaftarAkaunIbuBapaAtauPenjagaDAO.java
 */

package dao;

import model.IbuBapaAtauPenjaga;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaftarAkaunIbuBapaAtauPenjagaDAO {

    // Method untuk check sama ada emel sudah wujud
    public boolean emailExists(String emelAkaun) {
        String sql = "SELECT COUNT(*) FROM ibubapaataupenjaga WHERE emelAkaun = ?";
        try (Connection conn = DBUtil.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, emelAkaun);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0; // true kalau emel sudah ada
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // default kalau error atau tiada emel
    }

    // Method untuk tambah akaun baru
    public boolean addIbuBapaAtauPenjaga(IbuBapaAtauPenjaga ibp) {
        String sql = "INSERT INTO ibubapaataupenjaga (emelAkaun, kataLaluanAkaun) VALUES (?, ?)";

        try (Connection conn = DBUtil.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, ibp.getEmelAkaun());
            ps.setString(2, ibp.getKataLaluanAkaun()); // hashed password dari servlet

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}