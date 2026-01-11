/* 
    Document   : PermohonanPendaftaran.java
 */

package model;

import java.sql.Date;

public class PermohonanPendaftaran {

    private int idPermohonan;
    private String noKadPengenalanMurid;
    private Date tarikhPermohonan;
    private Short tahunKemasukan;
    private String statusPermohonan;

    // Getter & Setter idPermohonan
    public int getIdPermohonan() {
        return idPermohonan;
    }

    public void setIdPermohonan(int idPermohonan) {
        this.idPermohonan = idPermohonan;
    }

    // Getter & Setter noKadPengenalanMurid
    public String getNoKadPengenalanMurid() {
        return noKadPengenalanMurid;
    }

    public void setNoKadPengenalanMurid(String noKadPengenalanMurid) {
        this.noKadPengenalanMurid = noKadPengenalanMurid;
    }

    // Getter & Setter tarikhPermohonan
    public Date getTarikhPermohonan() {
        return tarikhPermohonan;
    }

    public void setTarikhPermohonan(Date tarikhPermohonan) {
        this.tarikhPermohonan = tarikhPermohonan;
    }

    // Getter & Setter tahunKemasukan
    public Short getTahunKemasukan() {
        return tahunKemasukan;
    }

    public void setTahunKemasukan(Short tahunKemasukan) {
        this.tahunKemasukan = tahunKemasukan;
    }

    // Getter & Setter statusPermohonan
    public String getStatusPermohonan() {
        return statusPermohonan;
    }

    public void setStatusPermohonan(String statusPermohonan) {
        this.statusPermohonan = statusPermohonan;
    }
}