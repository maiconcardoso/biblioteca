<%@page import="dao.LivroDao"%>
<%@page import="dto.LivroDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Livro</title>
</head>
<body>

	<%
		LivroDto livroDto = new LivroDto();
		livroDto.setName(request.getParameter("name_livro"));
		
		LivroDao livroDao = new LivroDao();
		livroDao.create(livroDto);
		response.sendRedirect("index.html");
	%>

</body>
</html>