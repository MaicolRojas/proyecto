<!-- INICIO HEADER -->
    <header>
        <!-- INICIO DEL CONTENEDOR -->
        <div class="container header-sec">
            <div class="row">
                <span class="col-xs-12 col-sm-3 logo"><a href="index-2.html"><img class="main" src="img/logo.png"
                            alt="ACA-GYM"><img class="fix" src="img/logo.png" alt="ACA_GYM"></a></span>
                <div class="col-xs-12 col-sm-9 header-right">
                    <!--LOGOS DEL HEADER-->
                    <div class="header_search_outer">
                        <span class="icon-search-icon"></span>
                        <!--ICONO DE BUSQUEDA-->
                        <input type="text" value="" placeholder="BUSCAR" class="header_search" />
                        <!--BARRA DE BUSQUEDA-->
                    </div>
                    <!-- FIN DEL CONTENEDOR -->

                    <!--INICIO DE BARRA DE PAGINAS-->
                    <nav class="navbar navbar-expand-md navbar-dark navbar-custom">
                        <!--INICIOS DEL NAVBAR-->
                        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.php">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="">Noticias</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                        aria-haspopup="true" aria-expanded="false" href="">Gimnasios</a>
                                    <div class="dropdown-menu">

                                        <?php include("conexion.php"); 
                                        $consulta = "SELECT * FROM gimnasio";
                                            
                                        $resultado=mysqli_query($conexion,$consulta);
                                        while($campo=mysqli_fetch_array($resultado,MYSQLI_BOTH)){
                                        echo "<a class='dropdown-item' href='gimnasio.php?".$campo['id_gimnasio'].""."' style='font-family: cursive;font-size: small;'>".$campo['nombre_gimnasio']."</a>";
                                        }   
                                        ?>
                                        <div role="separator" class="dropdown">
                                            <li class="nav-item">
                                                <a class="nav-link" href="Entrenadores.php">Entrenadores</a>
                                            </li>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <!--FIN DE BARRA DE PAGINAS-->
                </div>
            </div>
        </div>
    </header>
    <!--FIN DEL HEADER-->