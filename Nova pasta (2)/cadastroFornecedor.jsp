<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-br">

	 <head>
	     <meta charset="UTF-8">
	     <meta http-equiv="X-UA-Compatible" content="IE=edge">
	     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	     <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
	     <title>Cadastro Fornecedor</title>
	 </head>

	<body>
		<header>
            <nav class="navbar navbar-expand-lg btn-success">
                <div class="container-fluid">
		            <div class="container">
                        <a class="navbar-brand" href="index.html"><h1>VED Alimentos Orgânico</h1></a>
		                            <a class="nav-link text-white" href="fornecedor.jsp">Voltar á categoria </a>
		                </div>
		            </div>
		        </nav>
    		</div>
		</header>
	
		<div class="container mt-5">
			<div class="row">
		  		<div class="col-md-5 mx-auto border text-center">
		    		<h3>Cadastrar Fornecedores</h3>
		    			<form method="post" action="ServletFornecedor">
		      				<input type="hidden" name="id" value="${user.id}" />
								
							<div class="form-group" style="text-align-last: left;">
								<label for="nome" class="form-label">Raz�o Social:</label>
								<input type="text" class="form-control" name="razao_social" value="${user.razao_social}" required>
							</div>
							<div class="form-group" style="text-align-last: left;">
								<label for="nome" class="form-label">CNPJ:</label>
								<input type="text" class="form-control" name="cnpj" value="${user.cnpj}" required>
							</div>
							<div class="form-group" style="text-align-last: left;">
								<label for="nome" class="form-label">E-mail:</label>
								<input type="text" class="form-control" name="email" value="${user.email}" required>
							</div>
										
							<c:choose>
								<c:when test="${user == null}">
									<button type="submit" class="btn btn-warning col-2 mb-3 mt-3" name="option" value="insert">Salvar</button>
								</c:when>
								<c:otherwise>
									<button type="submit" class="btn btn-warning col-2 mb-3 mt-3" name="option" value="update">Atualizar</button>
								</c:otherwise>
							</c:choose>
		   				</form>
		    	</div>
		  	</div>
		</div>            
	</body>
</html>