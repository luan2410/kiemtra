package com.luan.dao;

import com.luan.db.DBContext;
import com.luan.model.DienThoai;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DienThoaiDAO {
    public List<DienThoai> getDienThoaiByNcc(String maNcc) {
        List<DienThoai> list = new ArrayList<>();
        // Sửa câu query để lấy đúng cột TENNHACC
        String sql = "SELECT dt.*, ncc.TENNHACC FROM dienthoai dt " +
                "JOIN nhacungcap ncc ON dt.MANCC = ncc.MANCC " +
                "WHERE dt.MANCC = ?";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, maNcc);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    DienThoai dt = new DienThoai();
                    dt.setMaDt(rs.getString("MADT"));
                    dt.setTenDt(rs.getString("TENDT"));
                    dt.setNamSanXuat(rs.getString("NAMSANXUAT"));
                    dt.setCauHinh(rs.getString("CAUHINH"));
                    dt.setMaNcc(rs.getString("MANCC"));
                    dt.setHinhAnh(rs.getString("HINHANH"));
                    dt.setTenNcc(rs.getString("TENNHACC")); // Lấy dữ liệu từ cột TENNHACC
                    list.add(dt);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}