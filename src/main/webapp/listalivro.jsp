<%@page import="java.util.List"%>
<%@page import="dto.LivroDto"%>
<%@page import="dao.LivroDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<meta charset="UTF-8">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<%
	LivroDao livroDao = new LivroDao();
	List<LivroDto> lista = livroDao.readAll();
%>
<title>Lista de Livros</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Código</th>
				<th scope="col">Nome</th>
			</tr>
		</thead>
		<tbody>
			<%for (int i = 0; i < lista.size(); i++) { %>
			<tr>
				<th scope="row"> <%=lista.get(i).getId() %> </th>
				<td> <%=lista.get(i).getName() %> </td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>