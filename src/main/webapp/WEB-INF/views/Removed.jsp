<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.prill.hibernate1.Book" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="7;url=http://localhost:8080/hibernate1/list" />
<title>Book Removed</title>
</head>
<body>
<center>
<br><br><br><br><br><br><br><br><br>
<h1>You've Removed that Book from the Database</h1>
<h2>Thank you for managing the database, you're being returned to the Book List.</h2>
</center>
<!--  <table border="1">
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
		<td><center> <a Href = "delete?rank=${book.rank}" <script>var r = ${book.rank}</script> onclick="return confirm('Are you sure you want to delete this item?');"> Delete</a></center></td>
</tr>
</c:forEach>
</table> -->
</body>
</html>