<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp" />
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <h4> Edycja użytkownika</h4>
    <form action="/user/edit" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <div class="form">
            <label for="userName"> Nazwa </label><br>
            <input type="text" name="userName" id="userName" value="${user.userName}" placeholder="Nazwa użytkownika">
        </div>
        <div class="form">
            <label for="email"> Email </label><br>
            <input type="text" name="email" id="email" value="${user.email}" placeholder="Email">
        </div>

        <div class="form">
            <label for="password"> Password </label><br>
            <input type="text" name="password" id="password" placeholder="Password"><br>
        </div>
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit"> EDYTUJ </button>
    </form>
</div>


<jsp:include page="/includes/footer.jsp" />
