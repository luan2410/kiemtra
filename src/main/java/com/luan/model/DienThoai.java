package com.luan.model;

public class DienThoai {
    private String maDt;
    private String tenDt;
    private String namSanXuat;
    private String cauHinh;
    private String maNcc;
    private String hinhAnh;
    private String tenNcc; // Thuộc tính để lưu tên nhà cung cấp lấy từ bảng kia

    // Getters and Setters
    public String getMaDt() { return maDt; }
    public void setMaDt(String maDt) { this.maDt = maDt; }
    public String getTenDt() { return tenDt; }
    public void setTenDt(String tenDt) { this.tenDt = tenDt; }
    public String getNamSanXuat() { return namSanXuat; }
    public void setNamSanXuat(String namSanXuat) { this.namSanXuat = namSanXuat; }
    public String getCauHinh() { return cauHinh; }
    public void setCauHinh(String cauHinh) { this.cauHinh = cauHinh; }
    public String getMaNcc() { return maNcc; }
    public void setMaNcc(String maNcc) { this.maNcc = maNcc; }
    public String getHinhAnh() { return hinhAnh; }
    public void setHinhAnh(String hinhAnh) { this.hinhAnh = hinhAnh; }
    public String getTenNcc() { return tenNcc; }
    public void setTenNcc(String tenNcc) { this.tenNcc = tenNcc; }
}