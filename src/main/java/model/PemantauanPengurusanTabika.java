/* 
    Document   : PemantauanPengurusanTabika.java
 */

package model;

import java.sql.Date;
import java.math.BigDecimal;

public class PemantauanPengurusanTabika {

    private int idPemantauanPengurusanTabika;
    private String kodTabika;
    private Integer idGuru;
    private Integer idModulPentadbiran;
    private Integer idModulKewangan;
    private Integer idModulAset;
    private Integer idModulHalEhwalKanakKanak;
    private Integer idBukuRujukanDanJurnal;
    private Integer idRuangDanPeralatan;
    private Integer idKebersihanDapurStorDanPenyediaanMakanan;
    private Short tahun;
    private Byte bulan;
    private Date tarikh;
    private Short bilanganMurid;
    private Boolean bengkelDwiMingguan;
    private Boolean takwimTabika;
    private Short jumlahSkalaKeseluruhan;
    private BigDecimal peratusSkalaKeseluruhan;
    private String gredKeseluruhan;

    // Getter & Setter idPemantauanPengurusanTabika
    public int getIdPemantauanPengurusanTabika() {
        return idPemantauanPengurusanTabika;
    }

    public void setIdPemantauanPengurusanTabika(int idPemantauanPengurusanTabika) {
        this.idPemantauanPengurusanTabika = idPemantauanPengurusanTabika;
    }

    // Getter & Setter kodTabika
    public String getKodTabika() {
        return kodTabika;
    }

    public void setKodTabika(String kodTabika) {
        this.kodTabika = kodTabika;
    }

    // Getter & Setter idGuru
    public Integer getIdGuru() {
        return idGuru;
    }

    public void setIdGuru(Integer idGuru) {
        this.idGuru = idGuru;
    }

    // Getter & Setter idModulPentadbiran
    public Integer getIdModulPentadbiran() {
        return idModulPentadbiran;
    }

    public void setIdModulPentadbiran(Integer idModulPentadbiran) {
        this.idModulPentadbiran = idModulPentadbiran;
    }

    // Getter & Setter idModulKewangan
    public Integer getIdModulKewangan() {
        return idModulKewangan;
    }

    public void setIdModulKewangan(Integer idModulKewangan) {
        this.idModulKewangan = idModulKewangan;
    }

    // Getter & Setter idModulAset
    public Integer getIdModulAset() {
        return idModulAset;
    }

    public void setIdModulAset(Integer idModulAset) {
        this.idModulAset = idModulAset;
    }

    // Getter & Setter idModulHalEhwalKanakKanak
    public Integer getIdModulHalEhwalKanakKanak() {
        return idModulHalEhwalKanakKanak;
    }

    public void setIdModulHalEhwalKanakKanak(Integer idModulHalEhwalKanakKanak) {
        this.idModulHalEhwalKanakKanak = idModulHalEhwalKanakKanak;
    }

    // Getter & Setter idBukuRujukanDanJurnal
    public Integer getIdBukuRujukanDanJurnal() {
        return idBukuRujukanDanJurnal;
    }

    public void setIdBukuRujukanDanJurnal(Integer idBukuRujukanDanJurnal) {
        this.idBukuRujukanDanJurnal = idBukuRujukanDanJurnal;
    }

    // Getter & Setter idRuangDanPeralatan
    public Integer getIdRuangDanPeralatan() {
        return idRuangDanPeralatan;
    }

    public void setIdRuangDanPeralatan(Integer idRuangDanPeralatan) {
        this.idRuangDanPeralatan = idRuangDanPeralatan;
    }

    // Getter & Setter idKebersihanDapurStorDanPenyediaanMakanan
    public Integer getIdKebersihanDapurStorDanPenyediaanMakanan() {
        return idKebersihanDapurStorDanPenyediaanMakanan;
    }

    public void setIdKebersihanDapurStorDanPenyediaanMakanan(Integer idKebersihanDapurStorDanPenyediaanMakanan) {
        this.idKebersihanDapurStorDanPenyediaanMakanan = idKebersihanDapurStorDanPenyediaanMakanan;
    }

    // Getter & Setter tahun
    public Short getTahun() {
        return tahun;
    }

    public void setTahun(Short tahun) {
        this.tahun = tahun;
    }

    // Getter & Setter bulan
    public Byte getBulan() {
        return bulan;
    }

    public void setBulan(Byte bulan) {
        this.bulan = bulan;
    }

    // Getter & Setter tarikh
    public Date getTarikh() {
        return tarikh;
    }

    public void setTarikh(Date tarikh) {
        this.tarikh = tarikh;
    }

    // Getter & Setter bilanganMurid
    public Short getBilanganMurid() {
        return bilanganMurid;
    }

    public void setBilanganMurid(Short bilanganMurid) {
        this.bilanganMurid = bilanganMurid;
    }

    // Getter & Setter bengkelDwiMingguan
    public Boolean getBengkelDwiMingguan() {
        return bengkelDwiMingguan;
    }

    public void setBengkelDwiMingguan(Boolean bengkelDwiMingguan) {
        this.bengkelDwiMingguan = bengkelDwiMingguan;
    }

    // Getter & Setter takwimTabika
    public Boolean getTakwimTabika() {
        return takwimTabika;
    }

    public void setTakwimTabika(Boolean takwimTabika) {
        this.takwimTabika = takwimTabika;
    }

    // Getter & Setter jumlahSkalaKeseluruhan
    public Short getJumlahSkalaKeseluruhan() {
        return jumlahSkalaKeseluruhan;
    }

    public void setJumlahSkalaKeseluruhan(Short jumlahSkalaKeseluruhan) {
        this.jumlahSkalaKeseluruhan = jumlahSkalaKeseluruhan;
    }

    // Getter & Setter peratusSkalaKeseluruhan
    public BigDecimal getPeratusSkalaKeseluruhan() {
        return peratusSkalaKeseluruhan;
    }

    public void setPeratusSkalaKeseluruhan(BigDecimal peratusSkalaKeseluruhan) {
        this.peratusSkalaKeseluruhan = peratusSkalaKeseluruhan;
    }

    // Getter & Setter gredKeseluruhan
    public String getGredKeseluruhan() {
        return gredKeseluruhan;
    }

    public void setGredKeseluruhan(String gredKeseluruhan) {
        this.gredKeseluruhan = gredKeseluruhan;
    }
}