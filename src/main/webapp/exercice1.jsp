<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exerice 1 - JSTL</title>
</head>
<body>

	<c:set var="valMin" value="0" scope="request"/>
	<c:set var="valMax" value="10" scope="request"/>
	
	<c:forEach var="i" begin="${valMin }" end="${valMax }"> 
		<c:set var="fact" value="1" scope="request"/>
		
		<c:forEach var="j" begin="1" end="${i }">
			<c:set var="fact" value="${fact * j }" scope="request"/>
		</c:forEach>
		
		<h1>Le factoriel de ${i } est : ${fact } <br/></h1>
		
	</c:forEach>
	
	
</body>
</html>