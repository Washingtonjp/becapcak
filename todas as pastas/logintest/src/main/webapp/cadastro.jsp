<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<title>Cadastro</title>
</head>

<body>
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">

		<h1>Cadastrando Usuario</h1>

	</nav>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-5 mx-auto border text-center">
				<h3>Cadastrar </h3>
				<form method="post" action="Login">
					<input type="hidden" name="id" value="${}" />

					<div class="form-group" style="text-align-last: left;">
						<label for="nome" class="form-label">nome:</label> <input
							type="text" class="form-control" name="nome"
							value="${}" required>
					</div>


					<div class="form-group" style="text-align-last: left;">
						<label for="email">email</label> <input type="text"
							class="form-control" name="email" value="${}" required>
					</div>
						<div class="form-group" style="text-align-last: left;">
						<label for="passowd">Senha</label> <input type="text"
							class="form-control" name="senha" value="${}" required>
					</div>
					<c:choose>
						<c:when test="${user == null}">
							<button type="submit" class="btn  btn-info col-2 mb-3 mt-3"
								name="option" value="insert">Salvar</button>
						</c:when>
						<c:otherwise>
							<button type="submit" class="btn  btn-info col-2 mb-3 mt-3"
								name="option" value="update">Atualizar</button>
						</c:otherwise>
					</c:choose>
				</form>
			</div>
		</div>
	</div>
</body>
</html>