package com.luan.model;

public class NhaCungCap {
    private String maNcc;
    private String tenNhaCc; // Phù hợp với cột TENNHACC
    private String diaChi;
    private String soDienThoai;

    // Getters and Setters
    public String getMaNcc() { return maNcc; }
    public void setMaNcc(String maNcc) { this.maNcc = maNcc; }
    public String getTenNhaCc() { return tenNhaCc; } // Phù hợp với cột TENNHACC
    public void setTenNhaCc(String tenNhaCc) { this.tenNhaCc = tenNhaCc; } // Phù hợp với cột TENNHACC
    public String getDiaChi() { return diaChi; }
    public void setDiaChi(String diaChi) { this.diaChi = diaChi; }
    public String getSoDienThoai() { return soDienThoai; }
    public void setSoDienThoai(String soDienThoai) { this.soDienThoai = soDienThoai; }
}