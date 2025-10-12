-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2025 a las 00:44:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vaf3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre_pelicula` varchar(50) NOT NULL,
  `nombre_escritor` varchar(50) NOT NULL,
  `nombre_director` varchar(50) NOT NULL,
  `duracion` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `sinapsis_peli` varchar(200) NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre_pelicula`, `nombre_escritor`, `nombre_director`, `duracion`, `fecha`, `sinapsis_peli`, `ruta_imagen`) VALUES
(1, 'Volver al futuro', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', 116, '1985', 'El adolescente Marty McFly es amigo de Doc, un científico que ha construido una máquina del tiempo. Cuando los dos prueban el artefacto, un error fortuito hace que Marty llegue a 1955, año en el que s', 'vaf1.png'),
(2, 'Volver al futuro II', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', 108, '1989', 'Aunque a Marty McFly todavía le falta tiempo para asimilar el hecho de estar viviendo dentro de la familia perfecta gracias a su anterior viaje en el tiempo, no le queda ni espacio para respirar cuand', 'vaf2.png'),
(3, 'Volver al futuro III', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', 118, '1990', 'Marty McFly sigue en 1955 y su amigo Doc ha retrocedido al año 1885, la época del salvaje oeste. Éste le envía una carta donde comenta que la máquina del tiempo está averiada, y que es imposible repar', 'vaf3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre_personaje` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `nombre_actor` varchar(50) NOT NULL,
  `biografia` text NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre_personaje`, `descripcion`, `nombre_actor`, `biografia`, `ruta_imagen`) VALUES
(1, 'Emmett Brown', 'El Dr. Emmett Lathrop Brown, o Doc Brown, es un científico excéntrico y el inventor de la máquina del tiempo en la trilogía Regreso al Futuro. Es conocido por sus inventos, su cabello blanco desordenado y su personalidad de científico loco benévolo, así como por su amor por los nombres de científicos famosos para sus mascotas. \r\nEn cuanto a su ocupación; va desde científico, Inventor, hasta Herrero', 'Christopher Lloyd', 'Emmett Brown es un científico Licenciado en Ciencias Naturales y el mejor amigo del protagonista de la serie, Marty McFly ; interpretado por Michael J. Fox. Nacido en el ficticio pueblo de Hill Valley, California, en 1914, se define como estudiante de todas las ciencias (lo que le afirma en la tercera película) y pasa gran parte de su tiempo inventando diversos artefactos, entre los que destaca la máquina del tiempo, construida sobre la carrocería de un automóvil deportivo llamado DMC DeLorean, que motiva las peripecias de Volver al Futuro. Julio Verne, icono inspirador del Doc Emmet Brown.\r\nEntre sus ídolos se cuentan: Isaac Newton, Benjamin Franklin, Thomas Edison y Albert Einstein, todos ellos retratados y encuadrados encima de la chimenea de su salón. En 1955 tiene un perro llamado Copérnico y más tarde, en 1985, otro llamado Einstein. La gente de Hill Valley lo ve como un extraño, un excéntrico, e incluso como un loco, por ello tiene pocos amigos el único, realmente, es Marty McFly. Sin embargo, cuida mucho de la gente que está cerca de él. No creía en el amor a primera vista, pero termina enamorándose en su primer encuentro con la profesora Clara Clayton, a quien conoce en 1885, cuando viaja al pasado. Con ella se casa y tienen dos hijos: Julio y Verne ;en referencia a Julio Verne, autor favorito de Clara y Emmett en la película.Le gusta el jazz, las novelas de Julio Verne y las películas del oeste. No suele beber alcohol, ya que le afecta de forma desmedida, como se puede apreciar en Volver al Futuro III. Es alérgico a las fibras sintéticas. Doc es capaz de modificar y construir cualquier tipo de máquina. Fue capaz de crear un gran refrigerador en 1885 aunque su proceso de trabajo es aparatoso y complicado y fue un éxito el funcionamiento de una máquina del tiempo que construyó a partir de una locomotora de vapor, que aparece al final de la tercera película.', 'Emmett Brown.png'),
(2, 'Marty Mcfly', 'Marty McFly es un adolescente californiano conocido por ser el segundo viajero del tiempo del mundo el primero humanoy el mejor amigo del científico Dr. Emmett Doc Brown. Se describe como un joven despreocupado que tiende a ser impulsivo y avergonzado de su familia, pero también valiente e ingenioso cuando se enfrenta al peligro. Su rasgo más característico y a la vez su mayor defecto es su aversión a ser llamado -gallina lo que a menudo lo lleva a tomar riesgos innecesarios.', 'Michael J. Fox', ' Marty McFly nació el 9 de junio de 1968 en Hill Valley. Es el menor de tres hermanos. Su mejor amigo es el científico Emmett Brown  a quien llama coloquialmente Doc. En la primera película de la trilogía hay una ligera impresión de que Marty está algo avergonzado de su familia y no pasa mucho tiempo en casa prefiriendo pasar más momentos con Doc. En los primeros borradores Marty era un falsificador de vídeos. Marty es un despreocupado adolescente la mayoría del tiempo. No es precisamente el mejor estudiante académicamente pero sus calificaciones son aceptables  también tiene la tendencia de llegar tarde a la escuela. Toca la guitarra en The Pinheads y le gusta escuchar Huey Lewis and the News Tom Petty and the Heartbreakers y Van Halen además de ser un habilidoso skateboarder.Cuando se encuentra en peligro -Marty muestra valentía y puede ser muy ingenioso-astuto e inteligente. Su mayor defecto en su carácter es su persistencia en desear mostrar a otros que él no es un cobarde lo que a veces le causa riesgos innecesarios. Tampoco puede soportar que le llamen gallina un rasgo que comparte con el personaje de James Dean en Rebelde sin causa —película estrenada en 1955, año al que viaja Marty—. Sin embargo cerca del final de Back to the Future Part III  Marty se da cuenta de que no necesita demostrar constantemente su valor y evita lo que hubiese sido una gran tragedia en su vida, un choque con un Rolls-Royce Silver Cloud al ser retado a una carrera. La razón por la que Marty siente vergüenza de su familia es porque su padre George es un completo fracasado  un hombre bastante temeroso y servicial a su jefe Biff  el cual siempre lo utiliza para hacer su trabajo. En la primera película ayuda a su padre a mejorar su vida sin saber que lograría que su familia fuera rica y Biff le tiene incluso miedo a George. Por el lado de su madre tiene algunos problemas con los excesos de bebida. Marty parece ser el único que posee sentido común y astucia para enfrentarse a los bravucones.', 'Marty Mcfly.png'),
(3, 'Biff Tannen', ' Biff Tannen es un personaje intimidante, el antagonista principal de la trilogía Volver al Futuro. Se le describe como un matón ruidoso y desagradable, cuya vida se altera drásticamente cuando su yo del futuro le entrega un almanaque deportivo en 1955, permitiéndole acumular una gran fortuna a través de las apuestas. Este acto desata un caos que cambia la línea del tiempo, convirtiéndolo en un millonario con un imperio, y más tarde, sirviendo como inspiración para un Donald Trump distópico y poderoso', ' Thomas F. Wilson', ' Biff Howar Tannen nació el 26 de marzo de 1937 en Hill Valley, California. Tannen fue un empresario estadounidense que, en una línea de tiempo alternativa, funda la compañía petrolera Biffco y es nombrado gobernador de Vancouver entre 1973 y 1976.\r\n\r\nEn 1985 el estado civil de Biff es desconocido, pues no hay mención de sus hijos ni de su familia.[1]​ En el año 2015 Biff tiene un nieto, Griff Tannen, por lo que sugiere que Biff tenga al menos un hijo, aunque se desconoce la clase de relación que Griff tiene con su padre, o incluso si lo conoce. En la serie animada se revela que Biff tiene un hijo llamado Biff Jr. En un borrador del guion se revela que su segundo nombre es Howard, y aparece en los créditos como Biff H. Tannen.\r\n\r\nSu vida antes de 1955 es desconocida. Según la segunda película vivía con su abuela; a juzgar por los diálogos no tenía una buena relación con ella, ya que se dirigían al otro únicamente vociferándose entre sí, pudiéndose apreciar que Biff no la estimaba especialmente. En el juego se revela que su padre se llama Tannen.', ' Biff Tannen.png'),
(4, 'Lorraine Baines Mcfly ', 'Lorraine Baines McFly es un personaje principal de la trilogía Volver al Futuro, madre de Marty McFly, que en la línea temporal original es una ama de casa alcohólica y desdichada en 1985. Sin embargo, al cambiar la historia, se la muestra felizmente casada con George McFly, vibrante y optimista en 1985, y en 2015 está igual de feliz con él. Nació en 1938 en Hill Valley, California, y se enamora de Marty disfrazado de Calvin Klein en 1955, transformando su vida y la de su familia.Lorraine es descrita como una mujer con un gran espíritu, romántica y optimista, con deseos de un amor verdadero', 'Lea Thompson', ' Lorraine Baines McFly nació en 1938 en Hill Valley, California. Es esposa de George McFly y madre de Dave, Linda y Marty McFly. Es la hija mayor de Sam  y Stella Baines, y la hermana de Milton, Sally, Toby y Joey.\r\n\r\nLorraine se retrató inicialmente en 1985 como una mujer alcoholíca de mediana edad e infeliz. Después de que Marty cambia la línea de tiempo, se muestra que está en forma y felizmente casada con George en 1985. En la segunda parte todavía está felizmente casada con George en 2015, pero en la línea de tiempo distópica alternativa de 1985 ella es viuda y está casada con Biff de hecho fue el mismo Biff quien asesinó a George McFly, además ella fue sometida por órdenes de Biff a una cirugía de aumento de senos en contra de su voluntad.', 'Lorraine Baines Mcfly.png'),
(5, 'Jennifer Parker', ' Jennifer es una estudiante de secundaria que muestra admiración por Marty, especialmente por su talento musical. Se muestra empática y aprecia la bondad de los demás, incluyendo a los padres de Marty. Es la novia de Marty McFly en la saga de películas Volver al Futuro, interpretada originalmente por Claudia Wells y posteriormente por Elisabeth Shue.En la historia ella es una estudiante que sueña con un futuro junto a Marty, apoyando su aspiración musical y conociendo bien a Doc.Estudiante de secundaria que muestra admiración por Marty, especialmente por su talento musical. Se muestra empática y aprecia la bondad de los demás, incluyendo a los padres de Marty', 'Claudia Wells', 'Claudia Wells es una actriz estadounidense conocida principalmente por interpretar a Jennifer Parker en la película de 1985 Regreso al futuro. Nacida el 5 de julio de 1966 en Kuala Lumpur, Malasia, abandonó su papel en las secuelas de la película para cuidar de su madre enferma de cáncer.Después de su carrera como actriz, se convirtió en propietaria de la tienda de ropa masculina Armani Wells en Studio City, California ', 'Jennifer Parker.png'),
(6, 'Buford perro loco Tannen', 'Buford Perro Loco Tannen es un pistolero malhumorado, cobarde y propenso a la baboseo del Viejo Oeste, conocido por ser el tatarabuelo de Biff Tannen y un personaje memorable de la saga Regreso al Futuro. Es un forajido que roba aterroriza en Hill Valley y muestra poca inteligencia al contar con problemas de conteo y usar metáforas que no tienen sentido era rápido con el gatillo y presumía de haber matado a muchos hombres con mal genio, cobarde, propenso a babear y con mal carácter', 'Thomas F. Wilson', 'Thomas F. Wilson nacido en Filadelfia el 15 de abril de 1959 es un actor comediante, escritor, músico y pintor estadounidense,conocido por interpretar a Biff Tannen en la trilogía de películas Volver al Futuro. Estudió artes dramáticas y política internacional y ha tenido una extensa carrera en cine, televisión y doblaje, prestando su voz a numerosos personajes animados. Además de actuar, Wilson es un músico consumado, ha desarrollado su carrera como escritor y se dedica a la pintura, mostrando un estilo influenciado por el arte pop', 'Buford perro loco Tannen.png'),
(7, 'Clara Clayton Brown', 'Clara Clayton-Brown es una maestra de 1885, fanática de Jules Verne y la astronomía, que se casa con Doc Brown y se convierte en madre de sus hijos Jules y Verne Brown. Es inteligente, independiente y cree en la verdad, defendiendo sus ideales y no tolerando las mentiras. inicialmente escéptica ante la ciencia fantástica del Doc, pero luego se convierte en una viajera del tiempo y una parte integral de la familia Brown', 'Mary Nell Steenburgen', 'Mary Steenburgen es una actriz estadounidense, nacida en 1953, reconocida por ganar un Oscar y un Globo de Oro por su papel en Melvin y Howard (1980). Su carrera despegó en los 80 y 90, destacándose en películas como Regreso al futuro III y Filadelfia. Ha participado en numerosas películas y series de televisión, incluyendo El Hombre sin Sombra, Step Brothers y The Help. Está casada con el actor Ted Danson desde 1995.', 'Clara Clayton Brown.png'),
(8, 'Dave Mcfly', 'Dave McFly es el hijo mayor de George y Lorraine McFly y hermano de Marty. En el 1985 original, Dave trabaja en Burger King y es un joven adolescente y despreocupado. Sin embargo, después de que Marty viaja al pasado y altera la línea temporal, el Dave de 1985 (en la nueva línea temporal) se convierte en un oficinista anodino en un bufete de contabilidad, interpretado por Marc McClure. En una escena eliminada, se le ve como un alcohólico y viviendo en la calle, resultado de que Biff Tannen reemplazara a su padre y se casara con Lorraine.', 'Marc McClure', 'Marc McClure nacido el 31 de marzo de 1957 es un actor estadounidense conocido por interpretar al fotógrafo Jimmy Olsen en la saga de Superman, incluyendo la película original de 1978 y sus secuelas. También participó en la película Supergirl y apareció en otras producciones famosas como Volver al futuro y Apolo 13, además de interpretar a Dax-Ur en la serie Smallville.', 'Dave Mcfly'),
(9, 'Linda McFly', 'Linda McFly es la hija de George y Lorraine McFly en la trilogía de Regreso al futuro, interpretada por Wendie Jo Sperber. En la primera película, se la describe inicialmente como poco atractiva y con dificultades para encontrar novio, pero después del viaje de Marty, su situación mejora significativamente, volviéndose más atractiva y con varios pretendientes. En el universo alternativo de 1985 en Regreso al futuro II, Linda se encontraba con problemas financieros y dependía de Biff', 'Wendie Jo Sperber', 'Wendie Jo Sperber 1958-2005 fue una actriz estadounidense conocida por sus papeles en I Wanna Hold Your Hand, Bachelor Party y la trilogía de Back to the Future, donde interpretó a Linda McFly. Tras ser diagnosticada con cáncer de mama, fundó el weSPARK Cancer Support Center para ofrecer apoyo gratuito a pacientes con cáncer y sus familias. Murió a los 47 años en 2005 debido a la enfermedad', 'Linda McFly.png'),
(10, 'Copernico', 'Copérnico fue el perro del Dr. Emmett Brown en la saga Volver al Futuro, siendo la mascota que el Doc tuvo en 1955, y apareció tanto en la Parte I como en la Parte III de la película, aunque su nombre solo se menciona en la Parte III. Copérnico era parte de una serie de mascotas de Doc nombradas en honor a científicos famosos y fue adoptado de un refugio en 1949', ' ', 'Era un perro de raza mestiza o terrier, posiblemente un Wheaten, y fue adoptado por Doc de un refugio de perros local en 1949', 'Copernico 1955.png'),
(11, 'Einstein 1985', 'El perro de Doc Brown en Volver al Futuro 1985 se llama Einstein, un mestizo que es el primer ser vivo en viajar en el DeLorean a través del tiempo Doc envía a Einstein un minuto al futuro y a los 1 21 gigavatios necesarios para que el DeLorean funcione. En realidad hubo dos perros distintos que interpretaron a Einstein a lo largo de la saga el que aparece en la primera película se llamaba Tigre fue entrenado por Richard Calkins  y otro llamado Freddie en la segunda entrega', 'Tigre', 'Fue entrenado por Richard Calkins', 'Tigre 1985.png'),
(12, 'Einstein 1989', 'Fue interpretado por un pastor ovejero fue entrenado por Matilda de Cagny', 'Freddie', 'Se dice que era un perro muy inteligente y fácil de trabajar segun los actores', 'Freddie 1989.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fuente_poder` text NOT NULL,
  `destino` text NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `nombre`, `descripcion`, `fuente_poder`, `destino`, `ruta_imagen`) VALUES
(1, 'DeLorean', 'El DeLorean Máquina del Tiempo fue el invento más exitoso del Dr. Emmett Brown, una máquina del tiempo impulsada por plutonio construida sobre un automóvil deportivo DeLorean DMC-12 que tenía que alcanzar 88 millas por hora, o bien, aproximadamente 140 kilómetros por hora, para poder viajar en el tiempo.', 'Reactor nuclear, más tarde un Sr. Fusión tras un viaje a 2015', 'Destruido por una locomotora diesel el 27 de octubre de 1985', 'DeLorean maquina del tiempo.png'),
(2, 'DeLorean DMC-12', 'El DeLorean DMC-12 es el único modelo de auto deportivo fabricado por la DeLorean Motor Company (DMC) entre 1981 y 1983. Sus características más distintivas incluyen su carrocería de acero inoxidable cepillado sin pintar y sus icónicas puertas de ala de gaviota. A pesar de su diseño futurista, el DMC-12 es un coche de culto que alcanzó la fama mundial como la máquina del tiempo en la saga de películas Regreso al Futuro', 'N/A', 'N/A', 'DeLorean DMC-12.png'),
(3, 'BMW 733i', 'La familia McFly poseía un BMW 733i en 1985. Este era conducido por George McFly, y era el auto familiar principal. Su matrícula era 3A709T8.Antes de que Marty McFly regresara a 1955, Biff Tannen había tomado prestado y destrozado otro auto propiedad de George, un Chevrolet Nova, mientras bebía y conducía, arruinando así los planes de Marty de ir al lago con Jennifer Parker para el fin de semana. Después de que Marty regresara a lo que resultó ser un presente alterado y mejorado, el auto cambió a un BMW, de una sola pieza, y Biff lo estaba encerando con las dos capas de cera que le gustaban a George.', 'N/A', 'N/A', 'BMW 733i.png'),
(4, 'Tren del tiempo Julio Verne', 'El Tren del Tiempo era una máquina del tiempo en sí misma que funcionaba con vapor en lugar de gasolina, construida entre 1885 y 1895, lo que le llevó diez años construirla. Cuando Doc tuvo éxito en su primera prueba de desplazamiento temporal, él y su familia viajaron a 2015 o más allá para realizarle una conversión a flotación', 'El condensador de flujo aún estaba incluido en este diseño, ubicado en el lugar del faro en la parte delantera de la locomotora. A diferencia del DeLorean, los componentes externos del Tren del Tiempo eran simétricos en ambos lados del vehículo, lo que posiblemente representaba una comprensión más sofisticada de la tecnología de viaje en el tiempo por parte de Doc, a pesar de haber sido construido con materiales más primitivos.', 'N/A', 'Tren del tiempo de Jule Verne.png'),
(5, 'Toyota Hilux', 'En 1985, Statler Toyota recibió una entrega de una camioneta nueva pintada de negro. Cuando Marty McFly regresó de 1955, el presente mejorado ubicó el vehículo en su garaje y él estaba en posesión de las llaves. Su matrícula era 2EZP916.', 'N/A', 'N/A', 'Toyota Hilux.png'),
(6, 'Aerotabla', 'Una aerotabla era un vehículo con forma de tabla, con conversión a flotación, popular en 2015, similar a un monopatín', 'N/A', 'N/A', 'Aerotabla.png'),
(7, 'Ford Convertible Super Deluxe', 'Biff Tannen poseía un modelo convertible de 1946 en 1955, pintado de negro con interior rojo, y apodado \"Sheila\". Su número de matrícula era 6H 96472.Biff era la única persona que conocía el truco para encender el motor (un botón en el salpicadero), como le explicó a Terry en Western Auto, quien no había podido arrancar el coche mientras trabajaba en él y se preguntó si estaba equipado con un interruptor de seguridad (kill-switch):', 'N/A', 'N/A', 'Ford Convertible Super Deluxe.png'),
(8, 'Locomotora 131', 'Locomotora 131 es una antigua locomotora de vapor de la Central Pacific Railroad, que transportaba trenes de pasajeros y de carga en un circuito de un solo sentido por una vía única. En su ruta hacia el oeste, se detenía en la Estación de Ferrocarril de Hill Valley, teniendo a San Francisco, California, como el final de la línea.', 'La máquina es una locomotora de vapor antigua, de tipo Ten-Wheeler (Diez Ruedas), 4-6-0 (dos ejes delanteros seguidos de tres ejes motrices) y que funciona con madera como combustible.', 'N/A', 'Locomotora 131.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
