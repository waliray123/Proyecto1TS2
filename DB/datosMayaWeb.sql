USE mayaweb;

/*---CALENDARIOS---*/

INSERT INTO Calendario_rueda (nombre_calendario_rueda,informacion)
VALUES ('Haab', 'El calendario solar maya, llamado Haab, es una cuenta de 365 días y por lo tanto se aproxima al año solar es el calendario civil, agrícola Maya, es el calendario de los reyes Mayas.
La palabra HAAB significa AÑO en el idioma maya yucateco.
El Haab está compuesto por 18 meses de 20 días cada uno, más un mes que consta de 5 días. Cada mes de 20 días, conocido como uinal, tiene su propio nombre. Todos estos 18 meses juntos suman 360 días.
El último mes, compuesto de 5 días, se conoce como Wayeb. Los 19 meses en su totalidad suman 365 días.
18 x 20 + 5 = 365
Fue elaborado por los astrónomos y matemáticos Mayas para dar respuesta a la necesidad de las personas para su abastecimiento de alimento con la siembra y cosecha del sagrado maíz, el frijol, y toda clase de productos agrícolas indispensable para la buena alimentación del ser humano; y en la necesidad de establecer el tiempo de duración del mando y cambio de autoridades imperiales, comunales y civiles del pueblo.
Este calendario, según los expertos, se estima que se utilizó por primera vez alrededor del solsticio de invierno de 550 ANE (Antes de Nuestra Era) y fue creado para ser utilizado en conjunto con el Tzolkin . En operación conjunta, el Haab y el Tzolkin crean un ciclo más grande de 52 años llamado como la Rueda Calendárica o Calendario Redondo que fue utilizado no solo por los mayas sino también por el resto de las culturas en Mesoamericanas.'
);

INSERT INTO Calendario_rueda (nombre_calendario_rueda,informacion)
VALUES ('Cholquij', 'El Cholqij deriva su nombre de los términos maya-kiche:
Chol: Contar cosas puestas en orden
Qij: el sol o día
El Cholq’ij es un calendario sagrado del pueblo Maya, compuesto por 260 días divididos en 13 meses. También recibe el nombre de calendario ritual o calendario sagrado o Tzolkin (Barrios, 2004; García, Curruchiche & Taquirá, 2009; Aj Xol Ch’ok, 2008; Rupflin, 1999).
El Cholqij es uno de los instrumentos que los Abuelos del Pueblo maya crearon; tiene dos aplicaciones principales, la primera: ubica momentos para actividades colectivas; la segunda: tiene una aplicación individual para identificar la conducta natural o la forma de ser de las personas por medio de su nawal, es decir, los rasgos psicológicos básicos, positivos y negativos.
Este calendario fue configurado a partir de los movimientos que la Luna realiza en su órbita alrededor de la Tierra. Así como el calendario AB agrícola o solar de 365 días está configurado en base al movimiento de traslación de la Tierra alrededor del Sol y es identificado como energía masculina.
Por otra parte, el Choloqij o calendario sagrado es considerado energía femenina, por su relación con los movimientos de la Luna y por la influencia que este cuerpo celeste ejerce sobre los organismos femeninos de la naturaleza y los seres humanos.'
);

INSERT INTO Calendario_rueda (nombre_calendario_rueda,informacion)
VALUES ('Rueda Calendarica', 'El nombre completo de cualquier fecha en el sistema de calendario maya consiste de una fecha Tzolkin y una fecha Haab. La Rueda Calendárica es el entretejido de los calendarios Tzolkin y Haab. En la Rueda Calendárica, una combinación del Tzolkin y el Haab no se repetirán hasta que hayan pasado 52 períodos de 365 días. Esto está basado en el concepto matemático de el mínimo común denominador y el mínimo común múltiplo. Ambos números, 260 y 365, son divisibles por 5, y 260 dividido por 5 es igual a 52, mientras que 365 dividido por 5 es igual a 73. Por lo tanto, el mínimo común múltiplo de 260 y 365 es 5 x 52 x 73 = 18,980.
De este modo, la Rueda Calendárica es igual a 18,980 días, 52 x 365 o 52 años Haab. Los mayas creen que cuando una persona alcanza los 52 años de edad, ellos atienen la sabiduría especial de un anciano. Una fecha de la Rueda Calendárica, con componentes tanto del calendario Tzolkin como el Haab, puede marcar de forma única un evento dentro de un período de 52 años. Sin embrago, cualquier evento que abarque más de 52 años requiere un calendario adicional, el calendario de Cuenta Larga.
El círculo más pequeño está conformado por 13 números; el círculo mediano por los 20 signos de los veinte días mayas del calendario Tzolkin, y el círculo más grande por el calendario haab con sus 365 días (dieciocho meses de veinte días y el mes corto de cinco días). En este conteo, los mayas consideraban que el día de la creación fue el 4 ahau 8 cumkú.
Cada cíclo de 18.980 días equivale a 52 vueltas del haab (calendario solar de 365 kines) y a 73 vueltas del tzolkin (calendario sagrado de 260 kines), y al término ambos vuelven al mismo punto. Cada 52 vueltas del haab se celebraba la ceremonia del fuego nuevo, analógicamente era un Siglo Maya.'
);

INSERT INTO Calendario_rueda (nombre_calendario_rueda,informacion)
VALUES ('Matematica Maya', 'La matemática maya es vigesimal, lo que significa que en vez de contar de diez en diez, la matemática maya cuenta de veinte en veinte. No hace mucho tiempo, las personas tradicionales en Yucatán todavía usaban semillas, palitos y conchas para hacer cálculos.
Los antiguos mayas usaban la matemática para respaldar muchas actividades en sus vidas diarias, desde transacciones en el mercado hasta predecir eclipses y hacer cálculos sofisticados de calendario.
En vez de los números del 0 al 9, la matemática maya usa tres símbolos: un frijol (punto) representa el número 1, un palito (raya) representa el número 5, 	una concha representa el número 0.'
);


/*---ELEMENTOS DE CALENDARIOS---*/
INSERT INTO Elemento_calendario (nombre_elemento_calendario,informacion,nombre_calendario_rueda)
VALUES ('Kin', 
'La escritura maya era un sistema logosilábico cuyo significado es discutido. Los símbolos individuales (glifos) podían representar bien una palabra (normalmente un morfema) o una sílaba, a decir verdad, el mismo glifo con frecuencia podía usarse de las dos formas.',
'Haab'
);

/*---ELEMENTOS DE LOS ELEMENTOS DE CALENDARIOS---*/
/*por ejemplo los nahuales, kines, energias, etc*/

/*---Kines---*/
INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Imix\''
,'Es el guardián fiero de la vida, de las ideas y proyectos que pone en marcha. Es el gestor, el productor, el iniciador. Goza de una gran sensibilidad existencial y una creatividad única. Si no está en armonía consigo mismo puede tener muchas ideas pero no realizar ninguna por no saber por dónde empezar o también dedicarse a tantos proyectos al mismo tiempo que no logra entregarse por entero a ninguno. Dejar lo que empiece sin terminar lo retrasa energéticamente. Espiritualmente representa la memoria ancestral y si está despierto logra integrarla en todo lo que hace.'
,'Dragon'
,'Kin'
);



