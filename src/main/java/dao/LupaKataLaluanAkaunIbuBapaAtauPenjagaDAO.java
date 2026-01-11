/* 
    Document   : LupaKataLaluanAkaunIbuBapaAtauPenjagaDAO.java
 */
package dao;

import util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class LupaKataLaluanAkaunIbuBapaAtauPenjagaDAO {

    /**
     * Update kata laluan akaun berdasarkan emel.
     *
     * @param emelAkaun emel akaun ibu bapa/penjaga
     * @param hashedPassword kata laluan baru yang sudah di-hash
     * @return int status: 1 = berjaya update 0 = emel tidak wujud (tiada row
     * diupdate) -1 = ralat sistem (exception)
     */
    public int updatePassword(String emelAkaun, String hashedPassword) {
        String sql = "UPDATE ibubapaataupenjaga SET kataLaluanAkaun=? WHERE emelAkaun=?";

        try (Connection conn = DBUtil.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, hashedPassword);
            ps.setString(2, emelAkaun);

            int rowsUpdated = ps.executeUpdate();

            if (rowsUpdated > 0) {
                return 1; // berjaya update
            } else {
                return 0; // emel tidak wujud
            }
        } catch (Exception e) {
            e.printStackTrace();
            return -1; // ralat sistem
        }
    }
}
