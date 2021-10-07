/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BLL;

import GUI.thongbao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ADMIN
 */
public class BLL_SV {

    public static boolean KT_Them(DTO.DTO_SV SV) {
        ResultSet rs = DAO.DAO_SinhVien.LaySV();
        try {
            while (rs.next()) {
                if (rs.getString("MaSinhVien").matches(SV.getMaSV())) {
                    thongbao.thongbao("Mã Sinh vien hàng đã dùng", "");
                    return false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(BLL_SV.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (SV.getMaSV().trim().equals("") || SV.getTenSV().trim().equals("") || SV.getTuoi().trim().equals("") || SV.getCMND().trim().equals("")) {
            thongbao.thongbao("Không để trống thông tin", "thông báo");
            return false;
        }
//        if (SV.getCMND().length()!=10) {
//            thongbao.thongbao("Nhập lại số CMND", "");
//            return false;
//        }
        return true;
    }

    public static void dodulieu(JTable tbl) {
        DefaultTableModel tblModel = (DefaultTableModel) tbl.getModel();
        tblModel.setRowCount(0);
        Object obj[] = new Object[2];
        ResultSet rs = DAO.DAO_SinhVien.LaySV();
        try {
            while (rs.next()) {
                obj[0] = rs.getString("MaSinhVien");
                obj[1] = rs.getString("TenSinhVIen");
                tblModel.addRow(obj);
            }
        } catch (SQLException ex) {
            System.out.println("lỗi đổ table");
        }
    }
  public static void TimKiem(JTable tbl,String tukhoa) {
        DefaultTableModel tblModel = (DefaultTableModel) tbl.getModel();
        tblModel.setRowCount(0);
        Object obj[] = new Object[2];
        ResultSet rs = DAO.DAO_SinhVien.TimKiem(tukhoa);
        try {
            while (rs.next()) {
                obj[0] = rs.getString("MaSinhVien");
                obj[1] = rs.getString("TenSinhVIen");
                tblModel.addRow(obj);
            }
        } catch (SQLException ex) {
            System.out.println("lỗi đổ table");
        }
    }

    public static boolean KT_Xoa(String MaSV) {
        ResultSet rs = DAO.DAO_ThuePhong.LayTatCa();
        try {
            while (rs.next()) {
                if (rs.getString("MaSinhVien").matches(MaSV)) {
                    thongbao.thongbao("Sinh Vien đã hoặc đang thuê phòng", "");
                    return false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(BLL_SV.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public static boolean KT_Sua(DTO.DTO_SV SV) {
        if (SV.getMaSV().trim().equals("") || SV.getTenSV().trim().equals("") || SV.getTuoi().trim().equals("") || SV.getCMND().trim().equals("")) {
            thongbao.thongbao("Không để trống thông tin", "thông báo");
            return false;
        }
        return true;
    }

}
