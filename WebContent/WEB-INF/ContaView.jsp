<!--SANTAROSSA RICCARDO 5BIA 07/04/2022-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='css/bootstrapCSS/bootstrap.min.css' rel='stylesheet' type='text/css'>
<script src='js/jquery-3.6.0.min.js' type='text/javascript'></script>
<script src='js/bootstrapJS/bootstrap.bundle.min.js' type='text/javascript'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conta Sballo</title>
</head>
<body>
	<h2>Benvenuto BOSS</h2>
	<h4>Sei il visistatore numero ${count}</h4> <br>
	<form method='get' action="/demoSerber/contatore"><input type=submit value="RESET DELLA LISTA" name=andonio></form> <br>	
	<table class="table table-hover table-striped">
		<th>IP</th><th>Porta</th><th>Orario</th><th>Azione</th>
		<c:forEach items ="${list}"  var ="visitor" >
			<tr>
				<td>${visitor.ip}</td>
				<td>${visitor.porta}</td>
				<td>${visitor.timestamp}</td>
				<td><form method='get' action="/demoSerber/contatore"><input type=submit value="CANCELLA L'ELEMENTO ${visitor.id}" name=gianni><input type="hidden" value="${visitor.id}" name="cancellino"></form></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>