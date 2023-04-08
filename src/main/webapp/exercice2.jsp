<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercice 2 - JSTL</title>
</head>
<body>
	
	<form action="">
	
		<input type="number" name="val" id="val" placeholder="Donner un nombre">
		<input type="submit" value="Calculer">
	</form>
	
	<c:if test="${not empty param.val }">
		<c:set var="fact" value="1" scope="request"/>
		
		<c:forEach var="j" begin="1" end="${param.val }">
			<c:set var="fact" value="${fact * j }" scope="request"/>
		</c:forEach>
		
		<h1>Le factoriel de ${param.val } est : ${fact } <br/></h1>
	</c:if>
</body>
</html>