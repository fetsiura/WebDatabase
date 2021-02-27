<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp" />

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-color:#93a1a1;border-spacing:0;}
        .tg td{background-color:#fdf6e3;border-bottom-width:1px;border-color:#93a1a1;border-style:solid;border-top-width:1px;
            border-width:0px;color:#002b36;font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;
            word-break:normal;}
        .tg th{background-color:#657b83;border-bottom-width:1px;border-color:#93a1a1;border-style:solid;border-top-width:1px;
            border-width:0px;color:#fdf6e3;font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;
            padding:10px 5px;word-break:normal;}
        .tg .tg-2bhk{background-color:#eee8d5;border-color:inherit;text-align:left;vertical-align:top}
        .tg .tg-i0bd{border-color:inherit;font-family:"Comic Sans MS", cursive, sans-serif !important;;font-size:22px;text-align:left;
            vertical-align:top}
        .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
    </style>
    <table class="tg">
        <thead>
        <h3> Lista użytkowników</h3>
        <tr>

            <th>Id</th>
            <th>Nazwa użytkownika</th>
            <th>Email</th>
            <th>Akcja</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.userName}</td>
            <td>${user.email}</td>
            <td>
                <a href="<c:url value="/user/delete?id=${user.id}"/>">Usuń</a>
                <a href="<c:url value="/user/edit?id=${user.id}"/>">Edit</a>
                <a href="<c:url value="/user/show?id=${user.id}"/>">Pokaż</a>
            </td>
        </tr>
        </c:forEach>
        <td class="tg-2bhk"></td>
        <td class="tg-2bhk"></td>
        <td class="tg-2bhk"></td>
        <td class="tg-2bhk"></td>
        </tr>
        </tbody>
    </table>
</div>

<jsp:include page="/includes/footer.jsp" />


       