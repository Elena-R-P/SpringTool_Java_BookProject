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
    <div class="row p-3">
    	<div class="col p-3">
	    	<h1>New Book</h1>
			<form:form action="/books" method="post" modelAttribute="book">
			    <div class="mb-3">
			        <form:label class="form-label" path="title">Title</form:label>
			        <form:input path="title" class="form-control"/>
			        <form:errors class="text-danger" path="title"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="description">Description</form:label>
			        <form:textarea path="description" class="form-control"/>
			        <form:errors class="text-danger" path="description"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="language">Language</form:label>
			        <form:input path="language" class="form-control"/>
			        <form:errors class="text-danger" path="language"/>
			    </div>
			    <div class="mb-3">
			        <form:label class="form-label" path="numberOfPages">Pages</form:label>
			        <form:input type="number" path="numberOfPages" class="form-control"/>
			        <form:errors class="text-danger" path="numberOfPages"/>
			    </div>
			    <div class="mb-3">
			    	<input class="btn btn-info" type="submit" value="Submit"/>
			    </div>
			</form:form>
		</div>
    </div>
</body>
</html>