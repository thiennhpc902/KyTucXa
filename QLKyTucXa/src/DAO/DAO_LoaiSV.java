/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import GUI.thongbao;
import java.sql.ResultSet;

/**
 *
 * @author ADMIN
 */
public class DAO_LoaiSV {

    public static ResultSet LayLoaiSV() {
        String sql = "SELECT * FROM [dbo].[LoaiSinhVien]";
        return connection.Getdata(sql);
    }

    public static ResultSet LayTHeoMa(String MaLoai) {
        String sql = "SELECT * FROM [dbo].[LoaiSinhVien] where MaLoaiSV=N'" + MaLoai + "'";
        return connection.Getdata(sql);
    }

    public static void Them(DTO.DTO_LoaiSV Loai) {
        String sql = "INSERT INTO [dbo].[LoaiSinhVien] "
                + "           ([MaLoaiSV] "
                + "           ,[TenLoaiSV] "
                + "           ,[TienGiam] "
                + "           ,[MoTa]) "
                + "     VALUES "
                + "           (N'" + Loai.getMaLoaiSV() + "' "
                + "           ,N'" + Loai.getTenLoaiSV() + "' "
                + "           ," + Loai.getTienGiam() + " "
                + "           ,N'" + Loai.getMoTa() + "')";
        int kq = connection.ExecuteTruyVan(sql);
        if (kq > 0) {
            thongbao.thongbao("Thêm thành công", "");
        } else {
            thongbao.thongbao("Thêm  không thành công", "");
        }
    }

    public static void Sua(DTO.DTO_LoaiSV Loai) {
        String sql = "UPDATE [dbo].[LoaiSinhVien] "
                + "   SET [MaLoaiSV] = N'" + Loai.getMaLoaiSV() + "' "
                + "      ,[TenLoaiSV] = N'" + Loai.getTenLoaiSV() + "' "
                + "      ,[TienGiam] = " + Loai.getTienGiam() + " "
                + "      ,[MoTa] = N'" + Loai.getMoTa() + "' "
                + " WHERE MaLoaiSV=N'" + Loai.getMaLoaiSV() + "'";
        int kq = connection.ExecuteTruyVan(sql);
        if (kq > 0) {
            thongbao.thongbao("Sửa thành công", "");
        } else {
            thongbao.thongbao("Sửa  không thành công", "");
        }
    }

    public static void Xoa(String MaLoaiSV) {
        String sql = "DELETE FROM [dbo].[LoaiSinhVien] WHERE MaLoaiSV =N'" + MaLoaiSV + "'";
        connection.ExecuteTruyVan(sql);
    }

}
