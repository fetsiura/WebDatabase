<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp" />

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <h4> Szczegóły użytkownika</h4>
    <table>
        <tbody>
        <tr>
            <th>ID</th>
            <td>${user.id}</td>
        </tr>
        <tr>
            <th>Nazwa użytkownika</th>
            <td>${user.userName}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${user.email}</td>
        </tr>
        </tbody>
    </table>
    <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" onclick="window.location.href='/user/delete?id=${user.id}'">USUŃ UŻYTKOWNIKA</button>
</div>
<!-- /.container-fluid -->
<jsp:include page="/includes/footer.jsp" />


