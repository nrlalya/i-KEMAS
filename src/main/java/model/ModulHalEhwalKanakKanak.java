/* 
    Document   : ModulHalEhwalKanakKanak.java
 */

package model;

import java.math.BigDecimal;

public class ModulHalEhwalKanakKanak {

    private int idModulHalEhwalKanakKanak; 
    private Boolean aspek1;                
    private Boolean aspek2;               
    private Boolean aspek3;               
    private Boolean aspek4;               
    private Boolean aspek5;               
    private Boolean aspek6;             
    private Boolean aspek7;             
    private Boolean skalaPenuh;         
    private Byte jumlahSkala;            
    private BigDecimal peratusSkala;    
    private String gred;                  

    // Getter & Setter idModulHalEhwalKanakKanak
    public int getIdModulHalEhwalKanakKanak() {
        return idModulHalEhwalKanakKanak;
    }

    public void setIdModulHalEhwalKanakKanak(int idModulHalEhwalKanakKanak) {
        this.idModulHalEhwalKanakKanak = idModulHalEhwalKanakKanak;
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

    // Getter & Setter aspek6
    public Boolean getAspek6() {
        return aspek6;
    }

    public void setAspek6(Boolean aspek6) {
        this.aspek6 = aspek6;
    }

    // Getter & Setter aspek7
    public Boolean getAspek7() {
        return aspek7;
    }

    public void setAspek7(Boolean aspek7) {
        this.aspek7 = aspek7;
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