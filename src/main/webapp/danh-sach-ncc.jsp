<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Danh sách Nhà cung cấp</title>
</head>
<body>
<h1>Danh sách Nhà cung cấp</h1>
<table border="1" style="border-collapse: collapse; width: 100%;">
    <thead>
    <tr>
        <th>Mã NCC</th>
        <th>Tên Nhà Cung Cấp</th>
        <th>Địa chỉ</th>
        <th>Số Điện Thoại</th>
        <th>Xem Điện Thoại</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="ncc" items="${listNcc}">
        <tr>
            <td>${ncc.maNcc}</td>
            <td>${ncc.tenNhaCc}</td> <%-- Sửa thành tenNhaCc --%>
            <td>${ncc.diaChi}</td>
            <td>${ncc.soDienThoai}</td>
            <td><a href="danh-sach-dt?maNcc=${ncc.maNcc}">DS Điện thoại</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>