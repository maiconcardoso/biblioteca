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
<title>Excluir Livro</title>
</head>
<body>
	<form action="excluirLivro.jsp" method="POST">
		<div class="mb-3">
			<label for="formGroupExampleInput" class="form-label"></label> <input
				type="text" class="form-control"
				value=" <%=request.getParameter("id")%> "
				id="formGroupExampleInput">
		</div>
		<div class="mb-3">
			<label for="formGroupExampleInput2" class="form-label"></label> <input
				type="text" class="form-control"
				value=" <%=request.getParameter("name")%> "
				id="formGroupExampleInput2">
		</div>

		<div class="mb-3">
			<button type="submit" class="btn btn-danger">Excluir</button>
		</div>

	</form>
</body>
</html>