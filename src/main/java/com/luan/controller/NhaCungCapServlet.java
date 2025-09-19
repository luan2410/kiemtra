package com.luan.controller;

import com.luan.dao.NhaCungCapDAO;
import com.luan.model.NhaCungCap;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "NhaCungCapServlet", urlPatterns = {"/danh-sach-ncc"})
public class NhaCungCapServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NhaCungCapDAO dao = new NhaCungCapDAO();
        List<NhaCungCap> listNcc = dao.getAllNhaCungCap();
        request.setAttribute("listNcc", listNcc);
        request.getRequestDispatcher("/danh-sach-ncc.jsp").forward(request, response);
    }
}