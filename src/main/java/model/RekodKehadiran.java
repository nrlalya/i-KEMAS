/* 
    Document   : RekodKehadiran.java
 */

package model;

import java.sql.Date;

public class RekodKehadiran {

    private int idKehadiran;
    private String noKadPengenalanMurid;
    private Date tarikh;
    private String statusKehadiran;
    private String sebabKetidakhadiran;

    // Getter & Setter idKehadiran
    public int getIdKehadiran() {
        return idKehadiran;
    }

    public void setIdKehadiran(int idKehadiran) {
        this.idKehadiran = idKehadiran;
    }

    // Getter & Setter noKadPengenalanMurid
    public String getNoKadPengenalanMurid() {
        return noKadPengenalanMurid;
    }

    public void setNoKadPengenalanMurid(String noKadPengenalanMurid) {
        this.noKadPengenalanMurid = noKadPengenalanMurid;
    }

    // Getter & Setter tarikh
    public Date getTarikh() {
        return tarikh;
    }

    public void setTarikh(Date tarikh) {
        this.tarikh = tarikh;
    }

    // Getter & Setter statusKehadiran
    public String getStatusKehadiran() {
        return statusKehadiran;
    }

    public void setStatusKehadiran(String statusKehadiran) {
        this.statusKehadiran = statusKehadiran;
    }

    // Getter & Setter sebabKetidakhadiran
    public String getSebabKetidakhadiran() {
        return sebabKetidakhadiran;
    }

    public void setSebabKetidakhadiran(String sebabKetidakhadiran) {
        this.sebabKetidakhadiran = sebabKetidakhadiran;
    }
}