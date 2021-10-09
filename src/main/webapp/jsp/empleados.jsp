<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="context" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css" type="text/css" >
<title>Empleados</title>
</head>
<body>
<section class="form-register1">
	<h2>Listado de Empleados</h2>
     <table>
    	<tr>
    		<th>NOMBRE</th>
    		<th>CARGO</th>
    		<th></th>
    	</tr>
    	<c:forEach items="${empleados}" var="elemento"> 
        <tr> 
            <td> <div> ${elemento.nombre}</div></td>
        	<td> <span> ${elemento.cargo}</span></td>
        	<td><a href="${context}/empleado/${elemento.id}"><i class="fas fa-eye"></i></a></td>
		    <td><a href="${context}/empleado/e/${elemento.id}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
 		</tr>
 		</c:forEach>
	 </table>
	 <p>
	 <h3><a href="${context}/h2-console"><i class="fas fa-database"></i>   Consola</a></h3>
	<p>
	
	<h3>Añadir Empleado</h3>
	<form action="${context}/empleado" method="post">
		<input  class="controls1" id="nombre" name="nombre"	type="text" placeholder="Nombre">
			
	        <select  class="controls1" id="cargo" name="cargo" required>
			  	    <option>Seleccionar</option>
			  	<c:forEach items="${cargos}" var="cargo">
					<option value="${cargo}">${cargo}</option>
				</c:forEach>
			</select>
	<button class="botons1" type="submit">Enviar</button>
	</form>

	<script defer
		src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"
		integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+"
		crossorigin="anonymous"></script>
</section>
</body>
</body>
</html>