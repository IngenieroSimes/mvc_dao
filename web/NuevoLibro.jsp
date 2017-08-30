<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registro de un Nuevo LIbro</title>
</head>
<link href='estilos4.css' rel="stylesheet" />
<body>
<p class='cabecera'> Registrar un Nuevo Libro </p>
<div id="registro" class="box1" >
<form action="Control" >
<input type="hidden" name="accion" value="crear" />
<table align="center">
<thead>Registro de Libros</thead>
<tr> <td>Libro Id:</td> <td><input type="text" id="libro_id"
name=libro_id size="30" required /></td> </tr>
<tr> <td>Titulo:</td><td><input type="text" id="titulo" size="30" name=titulo required /></td> </tr>
<tr> <td>Autor:</td><td><input type="text" id="autor" size="30" name="autor" required /></td>
<tr> <td>Precio:</td><td><input type="text" id="precio" size="30" name=precio required /></td> </tr>
<tr> <td><input type="reset" value="Cancelar" /></td><td><input type="submit" value="Registrar" /> </td></tr>
</table>
</form>
</div>
</br>
<p class='cabecera'><a align="center" href="Control?accion=Listar">
<input type="button" value="Ver Listado"></a></p>
</body>
</html>
