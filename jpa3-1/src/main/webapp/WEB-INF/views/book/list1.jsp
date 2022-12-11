<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="${R}common.css" />
</head>
<body>
<div class="container">
  <c:forEach var="category" items="${ categories }">
    <h3>${ category.id } - ${ category.name }</h3>
    
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
        <c:forEach var="book" items="${ category.book }">
          <tr>
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
  </c:forEach>
</div>
</body>
</html>

