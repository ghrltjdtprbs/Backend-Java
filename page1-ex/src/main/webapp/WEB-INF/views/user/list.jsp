<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="stylesheet" type="text/css" href="${R}common.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}common.js"></script>
  <style>
      a.btn { float: right; margin: -20px 0 5px 0; }
  </style>
</head>
<body>
<div class="container">
  <h1>회원 목록</h1>
  <a href="create?${pagination.queryString}" class="btn">회원등록</a>
  <table class="list">
    <thead>
      <tr>
        <th>id</th>
        <th>name</th>
        <th>loginName</th>
        <th>password</th>
        <th>userType</th>
        <th>enabled</th>
        <th>email</th>
    
      </tr>
    </thead>
    <tbody>
      <c:forEach var="user" items="${ users }">
        <tr data-url="edit?id=${user.id}&${pagination.queryString}">
          <td>${ user.id }</td>
          <td>${ user.name }</td>
          <td>${ user.loginName }</td>
          <td>${ user.password }</td>
          <td>${ user.userType }</td>
          <td>${ user.enabled }</td>
          <td>${ user.email }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }"
                 queryStringName="pg" />
</div>
</body>
</html>

