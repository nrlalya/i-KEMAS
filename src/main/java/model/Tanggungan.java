/* 
    Document   : Tanggungan.java
 */

package model;

public class Tanggungan {

    private int idTanggungan;
    private Integer idIbuBapaAtauPenjaga;
    private String namaTanggungan;
    private Byte umurTanggungan;
    private String hubunganTanggungan;
    private String institusiTanggungan;
    private String biasiswaBantuanTanggungan;

    // Getter & Setter idTanggungan
    public int getIdTanggungan() {
        return idTanggungan;
    }

    public void setIdTanggungan(int idTanggungan) {
        this.idTanggungan = idTanggungan;
    }

    // Getter & Setter idIbuBapaAtauPenjaga
    public Integer getIdIbuBapaAtauPenjaga() {
        return idIbuBapaAtauPenjaga;
    }

    public void setIdIbuBapaAtauPenjaga(Integer idIbuBapaAtauPenjaga) {
        this.idIbuBapaAtauPenjaga = idIbuBapaAtauPenjaga;
    }

    // Getter & Setter namaTanggungan
    public String getNamaTanggungan() {
        return namaTanggungan;
    }

    public void setNamaTanggungan(String namaTanggungan) {
        this.namaTanggungan = namaTanggungan;
    }

    // Getter & Setter umurTanggungan
    public Byte getUmurTanggungan() {
        return umurTanggungan;
    }

    public void setUmurTanggungan(Byte umurTanggungan) {
        this.umurTanggungan = umurTanggungan;
    }

    // Getter & Setter hubunganTanggungan
    public String getHubunganTanggungan() {
        return hubunganTanggungan;
    }

    public void setHubunganTanggungan(String hubunganTanggungan) {
        this.hubunganTanggungan = hubunganTanggungan;
    }

    // Getter & Setter institusiTanggungan
    public String getInstitusiTanggungan() {
        return institusiTanggungan;
    }

    public void setInstitusiTanggungan(String institusiTanggungan) {
        this.institusiTanggungan = institusiTanggungan;
    }

    // Getter & Setter biasiswaBantuanTanggungan
    public String getBiasiswaBantuanTanggungan() {
        return biasiswaBantuanTanggungan;
    }

    public void setBiasiswaBantuanTanggungan(String biasiswaBantuanTanggungan) {
        this.biasiswaBantuanTanggungan = biasiswaBantuanTanggungan;
    }
}