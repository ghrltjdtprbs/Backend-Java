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
  <h1>사람 목록</h1>
  <a href="create?${pagination.queryString}" class="btn">사람등록</a>
  <table class="list">
    <thead>
      <tr>
        <th>pid</th>
        <th>name</th>
        <th>categoryCode</th>
        <th>phone</th>
        <th>gender</th>
        <th>email</th>
        <th>title</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="person" items="${ persons }">
        <tr data-url="edit?pid=${person.pid}&${pagination.queryString}">
          <td>${ person.pid }</td>
          <td>${ person.name }</td>
          <td>${ person.categoryCode }</td>
          <td>${ person.phone }</td>
          <td>${ person.gender }</td>
          <td>${ person.email }</td>
          <td>${ person.title }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }"
                 queryStringName="pg" />
</div>
</body>
</html>

