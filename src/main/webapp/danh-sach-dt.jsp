<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Danh sách Điện thoại</title>
</head>
<body>
<h1>Danh sách Điện thoại của: ${tenNcc}</h1>
<a href="danh-sach-ncc">Quay lại trang danh sách NCC</a>
<br/><br/>
<table border="1" style="border-collapse: collapse; width: 100%;">
    <thead>
    <tr>
        <th>Mã ĐT</th>
        <th>Tên ĐT</th>
        <th>Năm SX</th>
        <th>Cấu Hình</th>
        <th>Tên Nhà Cung Cấp</th>
        <th>Hình ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="dt" items="${listDt}">
        <tr>
            <td>${dt.maDt}</td>
            <td>${dt.tenDt}</td>
            <td>${dt.namSanXuat}</td>
            <td>${dt.cauHinh}</td>
            <td>${dt.tenNcc}</td>
            <td>
                    <%-- Giả sử bạn có thư mục 'images' trong webapp --%>
                <img src="images/${dt.hinhAnh}" alt="${dt.tenDt}" style="max-width: 100px;">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>