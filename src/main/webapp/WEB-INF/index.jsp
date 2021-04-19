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
    <div class="container mb-3">
    	<table class="table">
		    <thead>
		        <tr>
		            <th scope="col">Title</th>
		            <th scope="col">Description</th>
		            <th scope="col">Language</th>
		            <th scope="col">Number of Pages</th>
		            <th scope="col">Actions</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${books}" var="book">
		        <tr>
		            <td scope="row"><c:out value="${book.title}"/></td>
		            <td  scope="row"><c:out value="${book.description}"/></td>
		            <td  scope="row"><c:out value="${book.language}"/></td>
		            <td  scope="row"><c:out value="${book.numberOfPages}"/></td>
		            <td  scope="row"><a href="books/show/${book.id}" class="btn btn-outline-info">Information</a></td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
		<a class="btn btn-warning" href="/books/new">New Book</a>
    </div>
</body>
</html>