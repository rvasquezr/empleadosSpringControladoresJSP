<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="context" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css" type="text/css" >
<title>Información Empleado</title>
</head>
<body>
<section class="form-register1">
	<h2>Detalle</h2>

	<h4><span>${elemento.nombre}  ${elemento.cargo}</span></h4>
	<a href="${context}/empleado"><i class="fas fa-backward"></i></a>
			
	<p>
	<h3>Modificar Empleado</h3>
	
		<form id="fmodificar" action="${context}/empleado/${elemento.id}" method="post" >
		<input hidden="true" type="text" name="id" value="${elemento.id}">
		  <input class="controls2" type="text" id="nombre" name="nombre" value="${elemento.nombre}">
		  <select class="controls2" id="cargo" name="cargo" required >
		     <%-- <option th:each="cargoS:${cargos}" th:value="${cargoS}" th:text="${cargoS}"
					 th:selected="${cargo==cargoS}"/> --%>
			<c:forEach items="${cargos}" var="cargo">
				<option value="${cargo}" >${cargo}</option>
			</c:forEach>
	      </select>
	  				
	    <button class="botons1" type="submit">Enviar</button>
	</form>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"
		integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+"
		crossorigin="anonymous">
	</script>
</section>
</body>
</html>