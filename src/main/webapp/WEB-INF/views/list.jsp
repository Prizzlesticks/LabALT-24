<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.prill.hibernate1.Book" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book List</title>
</head>
<body>
<center>
<h1>Book List</h1>
<table border="1">
	<tr>
		<th>Rank</th>
		<th>Author</th>
		<th>Title</th>
		<th>Publisher/Imprint</th>
		<th>Sales</th>
		<th>Remove Record</th>
	</tr>
<c:forEach items="${bookList }" var="book">
	<tr>
		<td>${book.rank }</td>
		<td>${book.author }</td>
		<td>${book.title }</td>
		<td>${book.publisher }: ${book.imprint }</td>
		<td>${book.sales }</td>
		<td><center> <a Href = "delete?rank=${book.rank}"  onclick="return confirm('Are you sure you want to delete this item?');"> Delete</a></center></td>
		
</tr>
</c:forEach>
</table>
</center>
</body>
</html>