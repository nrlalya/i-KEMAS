/* 
    Document   : LogMasukAkaunIbuBapaAtauPenjagaDAO.java
 */

package dao;

import model.IbuBapaAtauPenjaga;
import util.DBUtil;
import java.sql.*;

public class LogMasukAkaunIbuBapaAtauPenjagaDAO {

    // Method untuk semak login
    public IbuBapaAtauPenjaga checkLogin(String emelAkaun, String hashedPassword) {
        String sql = "SELECT * FROM ibubapaataupenjaga WHERE emelAkaun=? AND kataLaluanAkaun=?";

        try (Connection conn = DBUtil.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, emelAkaun);
            ps.setString(2, hashedPassword);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                // Kalau jumpa, buat object model
                IbuBapaAtauPenjaga ibp = new IbuBapaAtauPenjaga();
                ibp.setEmelAkaun(rs.getString("emelAkaun"));
                ibp.setKataLaluanAkaun(rs.getString("kataLaluanAkaun"));
                return ibp;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // kalau gagal login
    }
}
