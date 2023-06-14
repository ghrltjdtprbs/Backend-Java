<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
      form { margin-bottom: 5px; }
      a.btn { float: right; }
  </style>
</head>
<body>
<div class="container">
  <h1>제품 목록</h1>
 
  
  <table class="list">
    <thead>
      <tr>
        <th>ID</th>
        <th>제품명</th>
        <th>키테고리</th>
        <th>가격</th>
        <th>수량</th>
    
      </tr>
    </thead>
    <tbody>
      <c:forEach var="product" items="${ products }">
        <tr data-url="edit?id=${product.id}&${pagination.queryString}">
          <td>${ product.id }</td>
       
          <td>${ product.title }</td>
          <td>${ product.category.title }</td>
          <td>${ product.price }</td>
          <td>${ product.quantity }</td>
        
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>