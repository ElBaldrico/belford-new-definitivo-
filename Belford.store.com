!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Belford Company</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>

    <!-- Panel de bienvenida -->
    <div class="welcome-panel" id="welcomePanel">
        <div class="panel-content">
            <h2>¡Bienvenido a Belford.com!</h2>
            <p>Estamos encantados de tenerte aquí. Explora nuestros productos y servicios.</p>
            <button id="closeButton">Cerrar</button>
        </div>
    </div>

    <!-- Navegación -->
    <nav>
        <a href="#home">Inicio</a>
        <a href="#about">Acerca de</a>
        <a href="#products">Productos</a>
        <a href="#contact">Contacto</a>
        <div class="cart">
            <a href="#cart">
                <i class="fas fa-shopping-cart"></i> Carrito
            </a>
        </div>
    </nav>

    <!-- Barra de búsqueda -->
    <div class="search-container">
        <input type="text" class="search-input" placeholder="Buscar...">
        <div class="search-icon">
            <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 96 960 960" width="24">
                <path d="M796 960L530 694q-26 23-58.611 35.5T400 742q-117 0-198.5-81.5T120 462q0-117 81.5-198.5T400 182q117 0 198.5 81.5T680 462q0 33-12.5 65.611T632 586l266 266-102 108ZM400 662q83 0 141.5-58.5T600 462q0-83-58.5-141.5T400 262q-83 0-141.5 58.5T200 462q0 83 58.5 141.5T400 662Z" />
            </svg>
        </div>
    </div>

    <!-- Contenido principal -->
    <header class="header">
        <div class="header-content container">
            <h1>BELFORD COMPANY</h1>
            <p>En Belford, creemos que la moda debe ser tanto una expresión personal como una herramienta para vivir la aventura al máximo.</p>
            <a href="#" class="btn-1">Información</a>
        </div>
    </header>

    <section class="Remeras1">
        <img src="imagenes/Fondo.jpg" alt="Fondo" width="1680" height="1100">
        <div class="galeria-content container">
            <h2>Nuestra calidad</h2>
            <p class="text-p">Nuestra colección de remeras, diseñadas para aquellos que buscan no solo estilo, sino también la mejor calidad...</p>
            <div class="Remeras1-group">
                <div class="Remera1 animar">
                    <img src="imagenes/remera1.png" alt="Remera clásica">
                    <h3>Remera clásica</h3>
                    <p>La remera clásica de un estampado a color...</p>
                </div>
                <div class="Remera1 animar">
                    <img src="imagenes/remera2.png" alt="Remera clásica 2">
                    <h3>Remera clásica 2</h3>
                    <p>La remera clásica de doble estampado...</p>
                </div>
                <div class="Remera1 animar">
                    <img src="imagenes/remera3.png" alt="Remera Pima">
                    <h3>Remera Pima</h3>
                    <p>Confeccionada en algodón Pima de alta calidad...</p>
                </div>
            </div>
        </div>
    </section>

    <section class="features container">
        <h2>Características de Nuestra Marca</h2>
        <div class="features-group">
            <div class="feature">
                <img src="imagenes/servicio_estampado.jpeg" alt="Servicio de Estampado" class="feature-image">
                <h3>Servicio de Estampado</h3>
                <p>Ofrecemos un servicio de estampado de alta calidad...</p>
            </div>
            <div class="feature">
                <img src="imagenes/envio_rapido.jpeg" alt="Envíos Rápidos" class="feature-image">
                <h3>Envíos Rápidos</h3>
                <p>Realizamos envíos rápidos y seguros...</p>
            </div>
            <div class="feature">
                <img src="imagenes/devoluciones.jpeg" alt="Devoluciones Fáciles" class="feature-image">
                <h3>Devoluciones Fáciles</h3>
                <p>Proceso sencillo de devolución...</p>
            </div>
        </div>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const welcomePanel = document.getElementById('welcomePanel');
            const closeButton = document.getElementById('closeButton');

            closeButton.addEventListener('click', function () {
                welcomePanel.style.opacity = '0';
                setTimeout(() => {
                    welcomePanel.style.display = 'none';
                    document.body.style.overflow = 'auto';
                }, 1000);
            });
        });
    </script>
</body>

</html>
