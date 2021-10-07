/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import GUI.thongbao;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author ADMIN
 */
public class DAO_SinhVien {

    public static ResultSet LaySV() {
        String sql = "SELECT * FROM [dbo].[SinhVien]";
        return connection.Getdata(sql);
    }

    public static ResultSet LaySVMa(String MaSV) {
        String sql = "SELECT * FROM [dbo].[SinhVien] where MaSinhVien =N'" + MaSV + "'";
        return connection.Getdata(sql);
    }

    public static void Them(DTO.DTO_SV SV) {
        String sql = "INSERT INTO [dbo].[SinhVien] "
                + "           ([MaSinhVIen] "
                + "           ,[MaLoaiSinhVien] "
                + "           ,[TenSinhVIen] "
                + "           ,[Tuoi] "
                + "           ,[GioiTinh] "
                + "           ,[SoDienThoai] "
                + "           ,[SoCMND]) "
                + "     VALUES "
                + "           (N'" + SV.getMaSV() + "' "
                + "           ,N'" + SV.getMaLoaiSV() + "' "
                + "           ,N'" + SV.getTenSV() + "' "
                + "           ," + SV.getTuoi() + " "
                + "           ,'" + SV.isGioiTinh() + "' "
                + "           ,N'" + SV.getSDT() + "' "
                + "           ,N'" + SV.getCMND() + "')";
        int kq = connection.ExecuteTruyVan(sql);
        if (kq > 0) {
            thongbao.thongbao("Thêm thành công", "");
        } else {
            thongbao.thongbao("Thêm  không thành công", "");
        }
    }

    public static void Xoa(String MaSV) {
        String sql = "DELETE FROM [dbo].[SinhVien] WHERE MaSinhVien=N'" + MaSV + "'";
        connection.ExecuteTruyVan(sql);
    }

    public static void Sua(DTO.DTO_SV SV) {
        String sql = "UPDATE [dbo].[SinhVien] "
                + "   SET [MaSinhVien] = N'"+SV.getMaSV()+"' "
                + "      ,[MaLoaiSinhVien] ="+SV.getMaLoaiSV()+" "
                + "      ,[TenSinhVien] =N'"+SV.getTenSV()+"' "
                + "      ,[Tuoi] = "+SV.getTuoi()+" "
                + "      ,[GioiTinh] = '"+SV.isGioiTinh()+"' "
                + "      ,[SoDienThoai] = '"+SV.getSDT()+"' "
                + "      ,[SoCMND] = '"+SV.getCMND()+"' "
                + " WHERE MaSinhVien=N'"+SV.getMaSV()+"'";
        if (connection.ExecuteTruyVan(sql) > 0) {
            thongbao.thongbao("Sửa thành công", "");
        } else {
            thongbao.thongbao("Sửa không thành công", "");
        }
    }
    public static ResultSet TimKiem(String tukhoa){
    String sql="select *from SinhVien where TenSinhVien like N'%"+tukhoa+"%' or SoDienThoai like N'%"+tukhoa+"%' or SoCMND like N'%"+tukhoa+"%'";
    return connection.Getdata(sql);
    }
}
