<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${R}common.js"></script>
  <link rel="stylesheet" type="text/css" href="${R}common.css" />
  <style>
    a.btn { float: right; margin: -20px 0 5px 0; }
    td:nth-child(1), td:nth-child(5) { text-align: center; }
  </style>
</head>
<body>
<div class="container">
  <h1>책목록</h1>
  <a href="create" class="btn">책등록</a>
  <table class="list">
    <thead>
      <tr>
        <th>id</th>
        <th>제목</th>
        <th>저자</th>
        <th>카테고리</th>
        <th>가격</th>
        <th>출판사</th>
     
      </tr>
    </thead>
    <tbody>
      <c:forEach var="book" items="${ books }">
        <tr data-url="edit?id=${ book.id }">
          <td>${ book.id }</td>
          <td>${ book.title }</td>
          <td>${ book.author }</td>
          <td>${ book.category.name }</td>
          <td>${ book.price }</td>
          <td>${ book.publisher }</td>
       
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>

