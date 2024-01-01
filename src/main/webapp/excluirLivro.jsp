<%@page import="dao.LivroDao"%>
<%@page import="dto.LivroDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de exclusão de livros</title>
</head>
<body>

	<%
		LivroDto livroASerExcluido = new LivroDto();
		//livroASerExcluido.setId(Integer.parseInt(request.getParameter("id")));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("name"));
		
		LivroDao livroDao = new LivroDao();
		livroDao.excluir(livroASerExcluido);
		response.sendRedirect("listalivro.jsp");
	
	%>

</body>
</html>