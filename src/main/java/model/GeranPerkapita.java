/* 
    Document   : GeranPerkapita.java
*/

package model;

public class GeranPerkapita {

    private int idGeranPerkapita;          
    private String noKadPengenalanMurid;   
    private String saizBajuSukan;          
    private String saizBajuSeragamSekolah; 

    // Getter & Setter idGeranPerkapita
    public int getIdGeranPerkapita() {
        return idGeranPerkapita;
    }

    public void setIdGeranPerkapita(int idGeranPerkapita) {
        this.idGeranPerkapita = idGeranPerkapita;
    }

    // Getter & Setter noKadPengenalanMurid
    public String getNoKadPengenalanMurid() {
        return noKadPengenalanMurid;
    }

    public void setNoKadPengenalanMurid(String noKadPengenalanMurid) {
        this.noKadPengenalanMurid = noKadPengenalanMurid;
    }

    // Getter & Setter saizBajuSukan
    public String getSaizBajuSukan() {
        return saizBajuSukan;
    }

    public void setSaizBajuSukan(String saizBajuSukan) {
        this.saizBajuSukan = saizBajuSukan;
    }

    // Getter & Setter saizBajuSeragamSekolah
    public String getSaizBajuSeragamSekolah() {
        return saizBajuSeragamSekolah;
    }

    public void setSaizBajuSeragamSekolah(String saizBajuSeragamSekolah) {
        this.saizBajuSeragamSekolah = saizBajuSeragamSekolah;
    }
}