/* 
    Document   : ModulKewangan.java
 */

package model;

import java.math.BigDecimal;

public class ModulKewangan {

    private int idModulKewangan;    
    private Boolean aspek1;         
    private Boolean aspek2;         
    private Boolean aspek3;    
    private Boolean aspek4;
    private Boolean aspek5;      
    private Boolean skalaPenuh;    
    private Byte jumlahSkala;      
    private BigDecimal peratusSkala;
    private String gred;     

    // Getter & Setter idModulKewangan
    public int getIdModulKewangan() {
        return idModulKewangan;
    }

    public void setIdModulKewangan(int idModulKewangan) {
        this.idModulKewangan = idModulKewangan;
    }

    // Getter & Setter aspek1
    public Boolean getAspek1() {
        return aspek1;
    }

    public void setAspek1(Boolean aspek1) {
        this.aspek1 = aspek1;
    }

    // Getter & Setter aspek2
    public Boolean getAspek2() {
        return aspek2;
    }

    public void setAspek2(Boolean aspek2) {
        this.aspek2 = aspek2;
    }

    // Getter & Setter aspek3
    public Boolean getAspek3() {
        return aspek3;
    }

    public void setAspek3(Boolean aspek3) {
        this.aspek3 = aspek3;
    }

    // Getter & Setter aspek4
    public Boolean getAspek4() {
        return aspek4;
    }

    public void setAspek4(Boolean aspek4) {
        this.aspek4 = aspek4;
    }

    // Getter & Setter aspek5
    public Boolean getAspek5() {
        return aspek5;
    }

    public void setAspek5(Boolean aspek5) {
        this.aspek5 = aspek5;
    }

    // Getter & Setter skalaPenuh
    public Boolean getSkalaPenuh() {
        return skalaPenuh;
    }

    public void setSkalaPenuh(Boolean skalaPenuh) {
        this.skalaPenuh = skalaPenuh;
    }

    // Getter & Setter jumlahSkala
    public Byte getJumlahSkala() {
        return jumlahSkala;
    }

    public void setJumlahSkala(Byte jumlahSkala) {
        this.jumlahSkala = jumlahSkala;
    }

    // Getter & Setter peratusSkala
    public BigDecimal getPeratusSkala() {
        return peratusSkala;
    }

    public void setPeratusSkala(BigDecimal peratusSkala) {
        this.peratusSkala = peratusSkala;
    }

    // Getter & Setter gred
    public String getGred() {
        return gred;
    }

    public void setGred(String gred) {
        this.gred = gred;
    }
}