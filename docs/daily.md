-DAILY/weekly

Sprint 3

02/06/2020 

Hicimos:
    •   Renderizamos métodos.
    •   Creamos bases de datos Dummies para usuarios y actividades (clases).
    •   Creamos partials y agregamos includes.
    •   Creamos vista de detalle de producto para Admin.

Continuar haciendo:
    •   Tenemos que hacer todavia la vista de modificacion de productos "productEdit.ejs/html".
    •   tenemos que retocar la estetica del front.
    •   Chequear que todas las URLS funcionen.
    •   Chequear que todos los métodos y funcionalidades anden.

06/06/2020

Hicimos:
    • Organizamos las vistas.
    • Retocamos los includes.
    • Distribuimos vistas nuevas a realizar (+ info en el Trello).
    • Modificamos los links a los archivos estáticos que estaban crasheando (../public).

Continuar haciendo:
    • Solucionar Bases de Datos. Clases (Schedules, vacantes por clase, cómo conviene organizarlas).
    • Seguir pensando Panel de Control de Admin. Formularios de modificacion de Sedes, Actividades y perfiles de Usuarios.
    • Vistas faltantes.
    • Bases de datos en JSON para Sedes.

08/06/2020

Hicimos:
    • Creamos el Panel de Administrador.
    • Creamos la vista ´branches.ejs´ que muestra las sedes para poder editarlas y agregar.
    • Trabajamos en productDetail.
    
Continuar haciendo:
    • Terminar de cranear los alcances y limitaciones de cada tipo de miembro (user, profesor y admin).

09/06/2020

Hicimos:
    • Terminamos el formulario de carga de actividades/productos.
    • Terminamos de pulir la vista de sedes.
    • Arreglamos los links de la navbar.
    • Comenzamos el formulario de "olvidé contraseña".
    • Comenzamos a instalar el multer para poder cargar imagenes en la base de datos.
    
Continuar haciendo:
    • Seguir pensando las bases de datos. Como limitar los tiepos de las membresias. Cómo chequear disponibilidad por vacantes por cada actividad. Chquear genero. Chequear mayoría de edad (+18 años).

10/06/2020

DEVOLUCION 
-Buen producto.
-El responsive estaba bien hecho.
-Color de textos y fondos de los elementos en donde estan los textos. Fondos oscuros y textos negros. Posibilidades: modificar colores de fondo claro y texto oscuro, o lo opuesto, jugar con la opacidad del fondo. 
-Modificar imágenes de prueba. En todas las entregas intentar mantener la calidad al máximo.

PREGUNTAS PARA PROFES;
    •Pensar las bases de datos. Pensar tabla usuario:
    -tipos de las membresias => Agregar una membresia mas: "no membresia" para users "admin" y "profes".
    -Cómo chequear disponibilidad por vacantes por cada actividad. 
    -Chquear genero. => Dejar esto como desarrollo opcional. 
    -Chequear mayoría de edad (+18 años). 

13/06/2020

-pensar como crear el perfil de usuario.
-pensar como hacer la funcionalidad de cambio de password.
-que solo el admin pueda otorgar modo admin/instructor

DEVOLUCION NOVIA GONZA

-intentar que las imagenes del carousel de inicio sea clickeables y nos lleven a algun lado.
-Meter mas informacion en la home, quizas destacar los productos mas importantes ahi.
-mover "contactanos" a otra pestania. ocupa mucho espacio en el inicio.
-mantener las dos columnas en el cuerpo y en el footer.. o si usamos tres, tres.
-poner banner de nike horizontal para seguir la idea de la pagina.
-aclarar el boton del carrito y los iconos. poner texto explicativo.
-cuidado con los colores de los botones en la pagina de detalle, elegir otro color para que no "compita" tanto con lo de abajo.


Sprint 4

20/06/2020 

Hicimos:
    •   Organizamos las views en carpetas /users y /products.
    •   Creamos las vistas de profile y de edit profile.
    •   Creamos la funcionalidad del register de usuario nuevo (multer funcionando para cargar avatar).
    •   Trabajamos con las validaciones del registe con Express Validator.
    •   Implementacion de bcrypt para autentificar password en el login.
    •   Fucionalidad de display de botones en la nav-bar de usuarios logueados y no logueados.

Continuar haciendo:
    •   Continuar trabajod con Express Validator para que muestre por la vista los errores (usar clase/etiqueta .small).
    •   Cosas opcionales que pensamos: hacer un branchDetail.ejs para mostrar detalles de las sedes con un mapa,      telefono de contacto y dirección.
    •   Definir parametros de css en el stylesheet del Proyecto.
    •   Armar la session y validar los diesplays de los botones que requieren sesion de usuario.

23/06/2020 

Hicimos:
    •   Agegado carousel de slides con productos en la home.
    •   Creamos y funcionando userscontroller métodos: update y destroy.
    •   Cambiado height de la navbar.
    •   Testeado sistema de autentificacion de login.
    •   Agregados dos middlewares. Metodo Auth terminado con autentificacion de mail y contraseñas, session y cookie. 
    •   Creado metodo logout de usersController.
    •   Creado script para prompt de confirmacion de "eliminacion de perfil".

Continuar haciendo:
    •   Trabajar en el multer. Problemas para actualizar (update) avatar de perfil.
    •   Mandar errores de validaciones a las vistas. Tanto para login/register como para updateForm de perfil.
    •   Perfeccionar vistas en media queries de tablet y desktop.
    •   Trabajar en panel de administrador, funcionalidad de buscar usuarios por ID o Nombre/Apellido.
    •   Debuggear prompt de confirmacion de "eliminacion de perfil" con sweet-alert.

Sprint 5

28/06/2020 

Hicimos:
    •  Modificamos tamaño letras del footer para que no sean tan grandes.
    •  Completamos el retro del sprint 4.
    •  Modificamos el navbar-toggle para que "flote" junto al botón de whatsapp.

Continuar haciendo:
    •   Falta comenzar a trabajar en las bases de datos y los items entregables del sprint número 5.

29/06/2020 

Hicimos:
    •  Reunion de organización de tablero para Sprint 5.
    •  Definimos cada uno de los modelos de datos de las tablas y terminamos de detallar el diagrama de la DB en draw.io.
    •  Creamos el SCRIPT con la estructura de la base de datos en el Workbench.

Continuar haciendo:
    •  Seguimiento de puntos pendientes de Sprint 4: Mostrar errores en todos los formularios, Ruteo para usuarios logueados/no, Botones de la navbar visibles solo para Admin del sitio.

4/07/2020 

Hicimos:
    •  Ejecutamos el script de la BD en workbench.
    •  Definimos cosas para estudiar que no recordabamos de las clases.
    •  Modificamos las vistas de productsDetail.ejs, products.ejs y el logo de whatsapp.

Continuar haciendo:
    •  Falta centrarnos en los CRUDS ahora que tenemos la estructura de la DB definitiva.

12/07/2020 

Hicimos:
    •  cargamos dummy data en la tabla "activities" y "branches".
    •  Definimos los modelos de la BD.
    •  Comentamos todas las 
    •  Logramos que la DB se conecte a nuestra app :) .
    •  Método productsControllers.all andadndo correctamente para mostrar todas las "lessons".

Continuar haciendo:
    •  Falta continuar trabajando en los routers/controllers.
    •  Actualizar funcionalidad de vistas.
    •  Terminar de configurar el "Panel de control del Admin".

13/07/2020 

Hicimos:
    •  Agregamos diferentes controllers de products, admin y branches.
    •  Borramos branches del footer (era medio engorroso tener que enviar el json de branches a cada vista).
    •  Debuggeamos Auth Verification.
    •  Debuggeamos Bcrypt.

Continuar haciendo:
    •  Prguntar: -Cómo guardar avatar_url en User model.
                 -Cómo esconder botones de Admin Panel, Login y Logout segun el usuario alojado en Session.
    •  Agregar en el menu de administrador boton y formulario de edicion de actividades ("Activity" model). Usar estructura de "branches".
    •  Agregar funcionalidad de "search by email User" para poder editar Roles (por default viene rol: "0"). Que el admin pueda ingresar al editor del perfil del usuario y que le aparezca la opcion de cambiar Rol.
    •  Corregir vistas Products (chequear errores y variables/if's en EJS).
    •  Corregir vistas Users (chequear errores y variables/if's en EJS).
    •  Verificar el correcto funcionamiento de las cookies.
    •  Corregir el Genero de User (no guarda el valor del campo male/woman/other).


14/07/2020 

Hicimos:
    •  Arreglamos multer para cargar fotos en la edicion (metodo Update) de perfil de usuario.

Continuar haciendo:
    •  Arreglar controllers de product u users.

15/07/2020 

Hicimos:
    •  Arreglamos el pane de ADMIN.
    
Continuar haciendo:
    •  PREGUNTAS PARA PROFES:
                -prodectsController (hecho).
                -sweet alert al borrar un user (hecho).
                -esconder botones al login (hecho).


