<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Producto::</title>
</head>

<body>
	<div class="container">
	<h1>Productos</h1>
			<hr>
	<h2>Crear productos</h2>
		<form:form method="post" action="/producto/login" modelAttribute="producto">
			<input type="hidden" name="_method" value="put">
			<form:label path="nombreProducto" class="col-sm-2 col-form-label">Nombre Producto:</form:label>
			<form:input type="text" path="nombreProducto" class="form-control"/>
			<br>
			<form:label path="codigo" class="col-sm-2 col-form-label">Código:</form:label>
			<form:input type="text" path="codigo" class="form-control"/>
			<br>
			<form:label path="precio" class="col-sm-2 col-form-label">Precio:</form:label>
			<form:input type="text" path="precio" class="form-control"/>
			<br>	
			<form:label path="categoria" class="col-sm-2 col-form-label">Categoria:</form:label>
			<form:input type="text" path="categoria" class="form-control"/>
			<br>		
			<a href="/producto" class="btn btn-success" role="button" data-bs-toggle="button">Limpiar</a>
			<input type="submit" class="btn btn-primary" value="Submit">

		</form:form>
	
		<br>
		<hr>
		<h2>Productos existentes</h2>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">NombreProducto</th>
		      <th scope="col">Codigo</th>
		      <th scope="col">Precio</th>
		      <th scope="col">Categoria</th>
		      <th scope="col-2">Acciones</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${listaProductos}" var="producto" >
			    <tr>
			      <th scope="row">${producto.getId()}</th>
			      <td>${producto.getNombreProducto()}</td>
			      <td>${producto.getCodigo()}</td>
			      <td>${producto.getPrecio()}</td>
			      <td>${producto.getCategoria()}</td>
			      <td>
			        <a href="/producto/${producto.getId()}/editar" class="btn btn-primary" role="button" data-bs-toggle="button">Editar</a>
			      
			      </td>
			      <td>
				      <form action="/producto/eliminar" method="get">
				      	<input type="hidden" name="id" value="${producto.getId()}">
				      	<input class="btn btn-danger" type="submit" value="Eliminar">
				      </form>
			      </td>
			    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div>
</body>

</html>