package com.luan.dao;

import com.luan.db.DBContext;
import com.luan.model.NhaCungCap;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NhaCungCapDAO {
    public List<NhaCungCap> getAllNhaCungCap() {
        List<NhaCungCap> list = new ArrayList<>();
        String sql = "SELECT * FROM nhacungcap ORDER BY MANCC ASC";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                NhaCungCap ncc = new NhaCungCap();
                ncc.setMaNcc(rs.getString("MANCC"));
                ncc.setTenNhaCc(rs.getString("TENNHACC")); // Sửa thành TENNHACC
                ncc.setDiaChi(rs.getString("DIACHI"));
                ncc.setSoDienThoai(rs.getString("SODIENTHOAI"));
                list.add(ncc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}