package com.luan.controller;

import com.luan.dao.DienThoaiDAO;
import com.luan.model.DienThoai;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DienThoaiServlet", urlPatterns = {"/danh-sach-dt"})
public class DienThoaiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maNcc = request.getParameter("maNcc");
        DienThoaiDAO dao = new DienThoaiDAO();
        List<DienThoai> listDt = dao.getDienThoaiByNcc(maNcc);
        request.setAttribute("listDt", listDt);
        if (!listDt.isEmpty()) {
            request.setAttribute("tenNcc", listDt.get(0).getTenNcc());
        }
        request.getRequestDispatcher("/danh-sach-dt.jsp").forward(request, response);
    }
}