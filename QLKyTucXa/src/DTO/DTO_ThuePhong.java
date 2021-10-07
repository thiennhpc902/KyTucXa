/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author ADMIN
 */
public class DTO_ThuePhong {
    String MaSV,MaPhong,NgayThue,NgayRaDuKien,SoNguoi,TenUser;
    boolean LoaiHinhThue;
    double TienCoc;

    public String getMaSV() {
        return MaSV;
    }

    public void setMaSV(String MaSV) {
        this.MaSV = MaSV;
    }

    public String getMaPhong() {
        return MaPhong;
    }

    public void setMaPhong(String MaPhong) {
        this.MaPhong = MaPhong;
    }

    public String getNgayThue() {
        return NgayThue;
    }

    public void setNgayThue(String NgayThue) {
        this.NgayThue = NgayThue;
    }

    public String getNgayRaDuKien() {
        return NgayRaDuKien;
    }

    public void setNgayRaDuKien(String NgayRaDuKien) {
        this.NgayRaDuKien = NgayRaDuKien;
    }

    public String getSoNguoi() {
        return SoNguoi;
    }

    public void setSoNguoi(String SoNguoi) {
        this.SoNguoi = SoNguoi;
    }

    public String getTenUser() {
        return TenUser;
    }

    public void setTenUser(String TenUser) {
        this.TenUser = TenUser;
    }

    public boolean isLoaiHinhThue() {
        return LoaiHinhThue;
    }

    public void setLoaiHinhThue(boolean LoaiHinhThue) {
        this.LoaiHinhThue = LoaiHinhThue;
    }

    public double getTienCoc() {
        return TienCoc;
    }

    public void setTienCoc(double TienCoc) {
        this.TienCoc = TienCoc;
    }

   
}
