<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
	<div class="mb-3 p-3">
		<div class="card" style="width: 30rem;">
			<a href="/books" class="btn btn-primary m-3">Main Page</a>
			<a href="/books/edit/${book.id}" class="btn btn-primary m-3">Edit Book</a>
			<ul class="list-group list-group-flush">
	 		    <li class="list-group-item  text-center"><h3 class="card-title"><c:out value="${book.title}"/></h1></li>
			    <li class="list-group-item">Description: <c:out value="${book.description}"/></li>
			    <li class="list-group-item">Language: <c:out value="${book.language}"/></li>
			    <li class="list-group-item">Number of pages: <c:out value="${book.numberOfPages}"/></li>
			</ul>
		</div>	
		<form action="/books/${book.id}" method="post" class="mt-4">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete" class="btn btn-danger btn-sm d-md-flex justify-content-md-end">
		</form>	
	</div>
</body>
</html>