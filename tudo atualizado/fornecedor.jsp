<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VED - Alimentos Organicos</title>
  <link rel="shortcut icon" href="../images/Header/fav-icon.png" type="image/png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- <link href="../css/bootstrap-4.4.1.css" rel="stylesheet"> -->
  <link href="../css/header.css" rel="stylesheet">
  <link href="../css/nav.css" rel="stylesheet">
  <link href="../css/body.css" rel="stylesheet">
  <link href="../css/footer.css" rel="stylesheet">
  <link href="../css/button.css" rel="stylesheet">
  <link href="../css/card.css" rel="stylesheet">
  <link href="../css/stylecategoria.css" rel="stylesheet">
  <link href="../css/canvas.css" rel="stylesheet">


</head>

<body>

  </div>

  </Header>
  <!--***************************************HEADER END***********************************-->


  <!--***************************************NAV BEGIN***********************************-->
  <nav class="navbar navbar-expand-lg btn-success">
    <div class="container-fluid">
      <h1>VED Limentos Organicos</h1>
    </div>
  </nav>
  

  <!--***************************************NAV END***********************************-->

  <div class="container mt-5 mb-4  ">
    <div class="row ">
      <div class="col-2 borda-menu color-menu2">
        <!--************* Parte esquerda da pagina começo  *********************-->
        <!-- Parte do Menu lateral  -->
        <div class="row text-left text-left">
          <nav class="navlateral border-menu ">
            <ul class="nav flex-column">
              <li class="nav-item mt-3 ">
                <class="nav-link>
                  <div class="col-7 d-flex  justify-content-center">
                    <a href="./index.html"><img src="../images/Header/LOGO-removebg-preview.png" width="80vw"
                        alt="Logo Ved" title="VED - Alimentos Organicos" /></a>
                  </div>
              </li>
              <hr>
              <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">Produto</a>
              </li>
              <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">Marca</a>
              </li>
              <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">Fornecedor </a>
              </li>
              <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">Categoria</a>
              </li>
              <li class="nav-item menuletra "><a class="nav-link menuletra" href="#">Lista de Cliente</a>
              </li>
              <li class="nav-item menuletra "><a class="nav-link menuletra" href="#">Lista de Pedidos</a>
              </li>


            </ul>
          </nav>

        </div>

      </div>
      <!-- ***** LADO DIREITO DA PAGINAS -->
      <div class="   col-sm-12 col-lg-10 ladodireito ">
        <div class="row justify-content-around ">
          <!-- TITULO -->

          <div class="col-6 col-sm-6   menucanvas">

            <button class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvascategoria"
              aria-controls="offcanvasExample"><img src="../images/Header/hamburger_menu.png" alt="">
            </button>
            <!-- compo do canvas -->

            <div class="offcanvas menucanvasdentro  offcanvas-start" tabindex="-1" id="offcanvascategoria"
              aria-labelledby="offcanvasExampleLabel">
              <div class="offcanvas-header menucanvasdentro ">
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                  aria-label="Close"></button>
              </div>
              <div class="menucanvasdentro">

                <ul class=" ">
                  <li class=" mt-3 ">

                  <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">
                      <h2>Produto</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">
                      <h2>Marca</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">
                      <h2>Fornecedor</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">
                      <h2>Cestas</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra"><a class="nav-link menuletra" href="#">
                      <h2>Categoria</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra "><a class="nav-link menuletra" href="#">
                      <h2>Clientes Cadastrado</h2>
                    </a>
                  </li>
                  <li class="nav-item menuletra "><a class="nav-link menuletra" href="#">
                      <h2>Pedidos Realizados</h2>
                    </a>
                  </li>
                </ul>
                <ul>
              </div>








            </div>
          </div>

        </div>
        <div class="col-12 col ">
			<div class="container">
				<div class="row justify-content-center">
			      <h1 class= col-10 >Pedidos Cadastrados</h1>
			      <hr>
				</div>
			</div>
	    </header>
	
	    <div class="container">
	        <form action="ServletPedido" method="post">
	            <button type="submit" class="btn btn-info mb-3" name="option" value="insertForm" >Atualizar Lista</button>
	        </form>
	
	
	        <table class="table mt-5">
	            <thead class="thead-dark">
	                <tr>
	                    <th scope="col">Id</th>
	                    <th scope="col">Cliente</th>
	                    <th scope="col">Item_Pedido</th>
	                    <th scope="col">Status_Pedido</th>
	                    <th scope="col">Frete</th>
	                 	                 
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="user" items="${lista}">  
	                	<form action="ServletPedido" method="post">           	
		                  	<tr>
		                      <input type="hidden" name="id" value="${user.id}"/>
		                      
	                           <td>${user.id} </td>
	                           <td>${user.cliente}</td>
	                           <td>${user.item_pedido}</td>
	                           <td>${user.status}</td>
	                           <td>${user.frete}</td>
	                                                    	                           
		                     </tr>
	                  	 </form> 
	               </c:forEach>        
	            </tbody>
	        </table>
          </div>
        </div>
      </div>
      </div>




    </div>
  </div>
  </div>

  <!--***************************************END FOOTER***********************************-->

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap-4.4.1.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <script src='js/app.js'></script>
</body>

</html>