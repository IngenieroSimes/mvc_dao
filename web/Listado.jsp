<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
Document : Listado
Created on : 19-may-2017, 18:00:30
Author : CARLOMAGNO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listado de Libros Registrados</title>
</head>
<link href='estilos4.css' rel="stylesheet" />
<script type="text/javascript" src="Navegacion.js"></script>
<body>
<p class='cabecera'> Listado de Libros Registrados </p>
<table border='0' align='left' width='60%'>
<tr>
<td class='head'> Codigo Libro </td>
<td class='head'> Titulo </td>
<td class='head'> Autor </td>
<td class='head'> Precio </td>
<td colspan='2' class='head'> Accion </td>
</tr>
<c:forEach var="libro" items="${requestScope.Listado}">
<tr>
    <td class='cuerpo'> <input class='cuerpo' type="text" value="${libro.libro_id}" name="libro_id"  id="${libro.libro_id}" disabled="true" /> </td>
    <td class='cuerpo'> <input class='cuerpo' type="text" value="${libro.titulo}" name="titulo"   id="titulo[${libro.libro_id}]"  onmousedown="ModoEdicion(this.id)"  onmouseout="ModoNormal(this.id)" required="true" size="40"   on/> </td>
<td class='cuerpo'> <input class='cuerpo' type="text" value="${libro.autor}" name="autor" id="autor[${libro.libro_id}]"  onmousedown="ModoEdicion(this.id)"  onmouseout="ModoNormal(this.id)" required="true" size="40"/></td>
<td class='cuerpo'> <input class='cuerpo' type="text" value="${libro.precio}" name="precio" id="precio[${libro.libro_id}]"  onmousedown="ModoEdicion(this.id)"  onmouseout="ModoNormal(this.id)" required="true"  size="40"/> </td>
<td class= 'boton' > <a title="Pulse Aquí para Actualizar este Item"
href='Control?accion=actualizar&clave=${libro.libro_id}' ><img
src="Imagenes/actualizar.jpg" width="32px" height="32px" /></a> </td>
<td class='boton' > <a title="Pulse Aquí para Borrar este Item" ><img
src="Imagenes/borrar.jpg" width="32px" height="32px"
onclick="ControlarBorrado('${libro.libro_id}')" /></a> </td>
</tr>
</c:forEach>
</table>
</br>
</br>
<div align="center">
<a href="index.html"><input type="button" value="Volver"></a>
<a href="NuevoLibro.jsp"><input type="button" value="Registrar un Nuevo
LIbro"></a>
</div>
</body>
</html>
