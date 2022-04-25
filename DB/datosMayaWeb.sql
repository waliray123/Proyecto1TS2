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

INSERT INTO Elemento_calendario (nombre_elemento_calendario,informacion,nombre_calendario_rueda)
VALUES ('Uinal', 
'El uinal se puede ver como el equivalente a nuestros meses ya que constan de 20 días, pero en lugar de 12 de ellos, el calendario Haab Maya cuenta con 18 de ellos. Los uinales, a parte de contar el tiempo se utilizaban para realizar ciertas actividades.',
'Haab'
);

INSERT INTO Elemento_calendario (nombre_elemento_calendario,informacion,nombre_calendario_rueda)
VALUES ('Nahual', 
'Nahual, también llamado nagual o nawal​ (en náhuatl: nahualli ‘oculto, escondido, disfraz’), dentro de las creencias mesoamericanas, es una especie de brujo o ser sobrenatural que tiene la capacidad de tomar forma animal. El término refiere tanto a la persona que tiene esa capacidad como al animal mismo que hace las veces de su alter ego o animal tutelar.
De acuerdo con la tradición y cosmovisión de los pueblos Mesoamericanos los Nahuales son espíritus y energías protectoras que acompañan a todos los elementos de la naturaleza, incluyendo a los humanos y animales a lo largo de toda su existencia.
Para la civilización Maya el nahual de cada persona era de suma importancia. Era algo que todos debían conocer y aprender a manejarlo. Debían saber cuándo se fue engendrado, la fecha de nacimiento, el año, la energía que le protege y su misión.
Dentro de la cultura maya se dice que cada uno está relacionado con un animal que es quién le dirige, como un ángel guardián, alguien con quien se identifica, con quien se encuentra conectado espiritualmente. Se dice también que cada persona incluso nace con el espíritu de un animal, y este se encarga de protegerlo y guiarlo.',
'Cholquij'
);

INSERT INTO Elemento_calendario (nombre_elemento_calendario,informacion,nombre_calendario_rueda)
VALUES ('Energia', 
'El calendario Cholq\'ij utiliza las energías del 1 al 13 pero su ciclo es de meses y días.
La relación del 13 con los ciclos de la vida es múltiple, entre ellas se pueden mencionar:
Las 13 energías en el nacimiento
Los 13 ciclos de 20 días de un año Cholq\'ij.
El 13 es una cantidad importante en el pensamiento maya. Se utiliza para indicar el nivel de energía y al combinar con el significado de los nawales construye la personalidad. Este número tiene influencia en toda la vida, marca la niñez, juventud, madurez y ancianidad.',
'Cholquij'
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

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ik\''
,'Es la comunicación, el aliento divino, la flexibilidad y el cambio. Tiene el don de la palabra, así que deberá usarla estratégicamente y con bondad. Necesita de novedades todo el tiempo, suele ser sumamente social aunque en sombra puede guardar mucho de sí mismo aún rodeado de gente y hablando sin decir nada. A nivel espiritual puede canalizar mensajes del más allá. Necesita focalizarse y decir todo lo que siente en lo más profundo de sí, sabiendo también cuándo guardar silencio.'
,'Viento'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ak\'bal\''
,'Es el sol de la oscuridad. Representa nuestro inconsciente, el mundo onírico y la capacidad de realizar nuestros sueños. Tiene el potencial de recibir mensajes en sueños, solo hay que hacerles caso. Necesita descansar mucho y estar solo por periodos. Es importante saber salir también y relacionarse con el mundo, con la espontaneidad que la caracteriza. Suelen ser histriónicos, sumamente intuitivos y más bien estancar su abundancia si no creen en sí mismos. Es importante estar atento a las posibles locuras, impulsividades, deseos sin resolver, y a un ego desmedido, para poder equilibrarse.'
,'Noche'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('K\'an'
,'Es la capacidad de inyectarle vida a todo lo que nos propongamos para que florezca, para que tenga resultados, para que se materialice y sea exitoso. En primer lugar la Semilla debe sentir, identificar sus pasiones, aquello que ama hacer, para que pueda dedicarse a eso y no desbalancearse entregando toda su infinita energía en proyectos ajenos o en aquellos a los que se ha acostumbrado por presión social o solo porque funcionan. También es la danza, el gozo, el placer, la curiosidad y el saber atinar, saber esperar al momento correcto para actuar'
,'La Semilla'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Chikchan'
,'Es la fuerza vital, la astucia para vivir en el mundo material, así como la sabiduría para entender que no hay espiritualidad sin equilibrio físico. La Serpiente se dedica a reunir los recursos necesarios para tener una buena vida, en sombra ese será su único objetivo, en luz, sabrá que ese es solo el medio para poder evolucionar a este plano. Suele ser dominante, territorial y austera, pero también muy culta y noble.'
,'La Serpiente'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kimi'
,'Es el puente entre diferentes dimensiones. En este plano domina la capacidad de ser como un relacionista público, de crear contactos, de saber cómo relacionarse con los demás para generar redes y oportunidades. En el plano espiritual es el mensajero de los espíritus y, aunque lo suela bloquear por miedo, puede recibir información para sí mismo o para ser transmitida a los demás como forma de ayuda. Su misión es entender la muerte como parte de la vida, profundizar en su conocimiento espiritual sobre la misma para saber dejar ir cuando corresponda.'
,'El enlazador de mundos'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Manik\''
,'Representa el servicio, la sanación y la realización. Es el poder de llevar a cabo todo lo que uno se proponga. En sombra, la Mano hace por hacer, es adicto al trabajo, pero no se arriesga a dedicarse a lo que más sueña. En luz, todo lo que haga además estará conectado con su capacidad de ayudar y de sanar. Debe tener mucho cuidado con control y aprender a poner límites sanos entre lo que le da a los demás y a sí mismo.'
,'La mano'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Lamat'
,'Representa el arte, la belleza, la elegancia, la armonía, la creatividad, pero también el pensamiento abstracto, el mundo de las ideas y la producción intelectual. Las personas Estrella gozan hasta de un garbo natural, y si bien su misión es desarrollar su gran creatividad pueden perderse fácilmente en el plano racional. En sombra buscan el perfeccionismo, dañando su sistema nervioso. En luz pueden llegar a ser grandes y virtuosos artistas. Es importante que dejen la terquedad de lado, la necesidad de relativizarlo todo y de querer encontrar la verdad en la mente conceptual.'
,'La estrella'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Muluk'
,'Es el mundo de las emociones. La Luna lo siente todo, su sensibilidad es vasta y todo le impacta profundamente. De hecho es capaz de saber cómo se siente cada persona a su alrededor, tendiendo a querer acobijar a todo el que sufra. Esto puede traerle muchos problemas ya que se cargará de cosas que no le corresponden. En este sentido goza de una poderosa intuición y de una gran imaginación. Representa la energía de lo femenino, el poder de las aguas y la maestría en relación a los elementos de la naturaleza. Necesita trascender el drama ahí donde lo ve, purificarse de todo lo que sienta y dejarse fluir.'
,'La luna'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ok'
,'Es la energía del amor incondicional. El Perro representa la fidelidad, la lealtad y el compañerismo, es el guardián de sus seres queridos. En sombra tiene problemas de autoestima, dando siempre demás a quienes no le corresponden y exigiendo en consecuencia. En luz es capaz del máximo altruismo, sabiéndose amar a sí mismo primero, poniendo límites sanos a todo lo que no le haga bien en sus relaciones afectivas y amando sin aprehensión. Tenderá a dedicarse de alguna u otra manera a proyectos sociales, a hacer el bien por la humanidad. En este sentido tendría que tener cuidado con inconscientemente actuar como el salvador de los demás.'
,'El perro'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Chuwen'
,'Es el niño interior que con su sabiduría ilumina la vida de los demás. En luz es el sentido del humor, lo lúdico, la irreverencia que cuestiona todo como jugando. En sombra suele tender a tomarse todo demasiado en serio y actuar como el abogado defensor de las causas justas. No se permite relajarse y guarda situaciones de la infancia por resolver. Su misión será mostrarle al mundo que nada es tan sólido como parece y que a veces es necesario confrontarnos desde la risa para lograr soltar el ego.'
,'El mono'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Eb\''
,'Representa el más alto estándar de integridad. Es el sabio que defiende las causas justas, habitualmente sacrificándose en el proceso. En luz está en conexión profunda con su libertad y sabrá equilibrar su gran necesidad de generar armonía alrededor suyo con el camino que quiera elegir. En sombra, se pospondrá por el resto o caerá en la indecisión aguda de no saber qué decisiones tomar, por tener un concepto rígido del deber ser.'
,'El humano'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('B\'en'
,'Es el explorador, el buscador del sentido último de la existencia. Su principal motivación es conocer, conocerlo todo, sobre todo otras culturas, otros territorios, otros saberes, otras idiosincrasias. En luz, sabrá dejarse guiar por su intuición y todo lo que conozca logrará transformarlo, para luego compartirlo con el mundo. En sombra, el escepticismo le jugará malas pasadas, y solo buscará que conocer hacia fuera, sin tener el coraje de viajar dentro suyo ni de encontrar un camino espiritual.'
,'El caminante del cielo'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ix'
,'Es el que con su encanto natural logra transformarlo todo. Artista, performer, alquimista, sanador, brujo, ingeniero, consejero, orador. En luz, podrá cumplir con su misión de ser fuente de inspiración para los seres humanos, en sombra la soberbia lo llevará a preocuparse solo por la valoración externa, por los aplausos.'
,'El mago'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Men'
,'Representa la visión panorámica, la agudeza analítica y la creatividad de vanguardia. Es visionaria y muy profunda, sintiéndose siempre responsable del bienestar ajeno. En luz logrará creer en sí misma para emprender el vuelo y evolucionar, en sombra se quedará procastinando distrayéndose con todo lo que su mente es capaz de vislumbrar, y poniendo el bien común adelante de sus prioridades como pretexto.'
,'El aguila'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kib\''
,'Es el samurai, el que con disciplina y entrega se entrena para ir a la batalla a ganar. Pero la batalla no es el conflicto, es la posibilidad de transformar la realidad, aquello que es injusto, de manera estratégica, intrépida, frontal y sobre todo humilde. Un Guerrero en sombra lo cuestiona todo solo por ego, incluso a sí mismo, autoboicoteándose. En luz es el maestro espiritual, perfil bajo, que ilumina con sus acciones.'
,'El guerrero'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kab\'an'
,'Representa la estabilidad suprema. Es la dadora de base, de estructura, tanto en el plano físico como en el emocional, psíquico o espiritual. Suelen ser personas bastante fuertes que logran impulsar, con su gran empuje, a que se genere aquello que hace falta para salir adelante. En sombra caen en la sobre interpretación, en ser retadoras, creando argumentos solo para validar aquello con lo que se han entercado. En luz, saben que la verdadera estabilidad es fluir con lo que la realidad les propone, sin presionar, sin recurrir a la fuerza.'
,'La tierra'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Etz\'anab\''
,'Es el equilibrio perfecto, la ecuanimidad, la paz interior que brota gracias a una verdadera aceptación de todo tal y como es. En luz el Espejo fluye con todo sin filtros ni reparos, generando una gran armonía entre quienes lo rodean. Es uno de los sellos que se suele llevar mejor con la gente. En sombra sin embargo tiende al juicio extremo, no encuentra orden nada, menos en sí mismo, y termina en crisis por criticarlo todo. No es capaz de verse y suele proyectar sus defectos en los demás. En el calendario maya tradicional se le asocia al cuchillo de obsidiana, cualidad espiritual para cortar de raíz con todo lo que no nos sirve en nuestra vida'
,'El espejo'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kawak'
,'Es la fuerza transformadora de la realidad. Cuando aparece la tormenta es momento de cambios radicales, no hay de otra. En general es una energía poderosa de creación, suele pasar perfil bajo pero cuando llega el momento se manifiesta con una gran fiereza. En sombra se estacan y no se permiten cambiar, o al revés, generan cierta adicción a los movimientos fuertes permanentes. Pueden también quedarse en la extrema introspección, son muy sensibles, y no mostrarse. En luz logran generar situaciones límites para dejar ir aquello que ya le tocaba irse y poder volver a empezar en un nuevo nivel de evolución.'
,'La tormenta'
,'Kin'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ajaw'
,'Es la energía de mayor evolución. Representa la luz generadora de vida, la sabiduría, la verdad, las cosas tal y como son. Cuando aparece el Sol es momento de brillar, de confiar en quienes ya somos y en lo que ya sabemos de manera intrínseca, y asumir los roles de autoridad, de liderazgo que nos correspondan. Es momento de afrontar la realidad como se presente, así nos cueste. El problema con el Sol es que al ser la verdad puede tornarse intransigente, radical con la ética, con los paradigmas, con lo que considera correcto o cierto, así, debe trabajar por sobre todas las cosas la humildad. La verdadera sabiduría no se anda mostrando, defendiendo o convenciendo, es un estado del alma, de conexión permanente con nuestro ser auténtico.'
,'El sol'
,'Kin'
);


/*---Uinales---*/
INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Wayeb\''
,'Cuando llegaban los cinco días sin nombre conocidos como uayeb, los mayas no se bañaban, no hacían obras serviles o de trabajo, porque temían que al realizar alguna actividad, les iría mal.'
,'Dias desafortunados, reflexion, gracia y penitencia'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Pop'
,'Este mes era una especie de año nuevo, era una fiesta muy celebrada, renovaban todas las cosas de utensilios de casa, como platos, vasos, banquillos, ropa, mantillas, barrían su casa y la asura la echaban fuera del pueblo, pero antes de la fiesta al menos 13 días ayunaban y se abstenían de tener sexo, no comían sal, ni chile, algunas personas ampliaban este período de abstinencia hasta tres uinales. Después todos los hombres se reunían con el sacerdote en el patio del templo y ponían una porción de copal en el brasero para quemarlo.'
,'Mat (símbolo de comunidad y matrimonio), petate'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Woo'
,'En este mes se realizaban festividades para sacerdotes, adivinadores, la ceremonia era llamada pocam, y oraban quemando copal a Kinich Ahau Itzamná, a quien consideraban el primer sacerdote. Con «agua virgen traída del monte, donde no llegase mujer» untaban las tablas de los libros y el sacerdote realizaba los pronósticos del año, realizaban un baile llamado okotuil.'
,'Rana, sapo, negro'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Zip'
,'En este mes se juntaban los sacerdotes con sus mujeres, y usaban idolillos de la diosa Ixchel, y la fiesta se llamaba Ibcil Ixchel, invocaban a los dioses de la medicina que eran Itzamná, Citbolontun y Ahau Chamahez, realizaban un baile llamado Chantunyab. El día siete del uinal zip día invocaban a los dioses de la caza Ah Cancum, Zuhuyzib Zipitabai, y otros, cada cazador sacaba una flecha y una cabeza de venado las cuales eran untadas de betún azul, y bailaban con las flechas en las manos, se horadaban las orejas, otros la lengua y pasaban por los agujeros siete hojas de una hierba llamada Ac. Al día siguiente era el turno de los pescadores, pero ellos untaban de betún azul sus aparejos de pesca y no se horadaban las orejas, sino que se ponían arpones, y bailaban el Chohom, y después de realizada la ceremonia iban a la costa a pescar, los dioses eran Abkaknexoi, Abpua, y Ahcitzamalcun.'
,'Rojo, conjuncion'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Sotz\''
,'En este mes los apicultores comenzaban los preparativos pero celebraban su fiesta en el uinal siguiente tsek, los sacerdotes y oficiales ayunaban, así como algunos voluntarios.'
,'Bat (murcielago)'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Tzek'
,'En este mes no derramaban sangre, los dioses venerados eran los cuatro bacabs, especialmente Hobnil. Ofrecían a los bacabs platos con figuras de miel, y los mayas bebían un vino llamado balche, el cual se procesaba de la corteza del árbol de ese nombre (Lonchucarpus violaceus), los apicultores regalaban miel en abundancia.'
,'Fin, palma, calavera'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Xul'
,'Este mes era dedicado a Kukulcán, los mayas iban por el jefe supremo de los guerreros llamado Nacom, al cual sentaban en el templo quemando copal, realizaban un baile de guerreros llamado Holkanakot, sacrificando un perro y quebrando ollas llenas de bebida para terminar su fiesta, y regresar con honores al Nacom a su casa. Esta ceremonia se celebraba en todos lados hasta la destrucción de Mayapán, después solo se celebraba en Maní en la jurisdicción de los Tutul xiúes, todos los señores se juntaban presentaban cinco banderas de pluma, y se iban al templo de Kukulcán, donde oraban durante cinco días, después de los cuales bajaba Kukulcán del cielo y recibía las ofrendas, la fiesta se llamaba Chikabán.'
,'Perro, instrumento musical'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Yaxk\'in'
,'En este mes se realizaba la ceremonia se llamaba Olob-Zab-Kamyax, se untaban todos los instrumentos de todos los oficios con betún azul, se juntaban los niños y las niñas del pueblo y les daban unos golpecillos en los nudillos, con la idea que los niños fueran expertos en los oficios de sus padres. Desde este uinal comenzaban a aparejarse para la ceremonia del uinal Mol.'
,'Primer Sol (o verde), inicio agricola, nuevo dia'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Mol'
,'En este mes los apicultores oraban a los dioses para que hubiese buenas flores y de esta manera tener una buena producción de las abejas,.en este mes era cuando fabricaban las efigies o ídolos de madera, los cuales eran de alguna forma bendecidos por los sacerdotes. Se practicaba un ritual en el cual se sangraban las orejas.'
,'Inicio de lluvia, agua, jade'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ch\'en'
,'En este mes hacían una fiesta llamaba ocná, que quiere decir «renovación del templo», la hacían en honor de los dioses de los maizales; los mayas acostumbraban tener ídolos de los dioses con pequeños braseros en donde quemaban copal, en esta fiesta cada año se renovaban los ídolos de barro y sus braseros.'
,'Lluvia, negro, acido'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Yax'
,'En este mes hacían una fiesta llamaba ocná, que quiere decir «renovación del templo», la hacían en honor de los dioses de los maizales; los mayas acostumbraban tener ídolos de los dioses con pequeños braseros en donde quemaban copal, en esta fiesta cada año se renovaban los ídolos de barro y sus braseros.'
,'Verde, humedad'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Sak'
,'En este mes el sacerdote y los cazadores hacían una ceremonia para aplacar a los dioses de la ira, y como una forma de penitencia por la sangre derramada durante la cazas (los mayas tenían como «cosa horrenda» cualquier derramamiento de sangre si dicho derramamiento no era en sus sacrificios), por eso cuando iban a la caza invocaban al dios de la caza, le quemaban copal y si podían le untaban al rostro del ídolo de la caza, la sangre del corazón de la presa.'
,'Blanco, lluvia'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Keh'
,'En las proximidades de este mes existía una fiesta muy grande y de fecha movible que duraba tres días, con quema de copal, a la cual Landa llamaba sahumería, ofrendas y borrachera. Los sacerdotes tenían cuidado de avisar con tiempo para realizar un ayuno previo'
,'Rojo, venado'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Mak'
,'En este mes la gente anciana realizaba una ceremonia llamada «tupp kak» (matar el fuego), era dirigida a los dioses de los panes y a Itzamná, en una fogata quemaban corazones de aves y animales, una vez incinerados los corazones apagaban el fuego con cántaros de agua. Se juntaba el pueblo y los sacerdotes y untaban con lodo y betún azul los primeros escalones de las escaleras de sus templos. En esta fiesta no realizaban ayuno, a excepción del sacerdote'
,'Red, cautiverio, pecado'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('K\'ank\'in'
,'Hasta la fecha se desconocen los dioses que se honraban en este periodo del año maya'
,'Sol amarillo'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Muwan'
,'Este mes correspondía a los cultivadores de cacao realizar una ceremonia a los dioses Chac Ek chuah, y Hobnil, sacrificaban un perro manchado con el color de cacao, y quemaban incienso y ofrecían iguanas de las azules (probablemente untadas de betún azul) y ciertas plumas de pájaros, terminada la ceremonia los mayas se comían las ofrendas.'
,'Halcon, buho'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Pax'
,'En este mes la ceremonia se llamaba pacum chac, y por un período de cinco noches se juntaban los señores (batab) y los sacerdotes (ah kin) de los pueblos menores (batabil), en las capitales y veneraban a Cit chac cob. Se homenajeaba con copal al jefe de los guerreros (nacom) durante cinco días, realizaban un baile de los guerreros llamado HOLKANAKOT. El sentido de esta ceremonia era para pedir a sus dioses alcanzar la victoria frente a sus enemigos. Se sacrificaba un perro, al cual se le extraía el corazón, se rompían ollas grandes que contenían bebida, y daban por finalizada la ceremonia, regresando a sus pueblos.'
,'Tiempo de siembra, tambor, musica'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('K\'ayab\''
,'Durante los meses kayab y Kumku en cada población hacían fiestas a las cuales llamaban zabacilthan, se reunían para presentar ofrendas, comer y beber preparándose para el uayeb, el mes corto de los cinco días nefastos.'
,'Tortuga, guacamaya'
,'Uinal'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('K\'umk\'u\''
,'Durante los meses kayab y Kumku en cada población hacían fiestas a las cuales llamaban zabacilthan, se reunían para presentar ofrendas, comer y beber preparándose para el uayeb, el mes corto de los cinco días nefastos.'
,'Maiz maduro, granero, oscuridad'
,'Uinal'
);

/*---Nahuales---*/

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Tzikin'
,'Significa pájaro. Es el símbolo de la suerte, la fortuna y los bienes materiales. También es símbolo de libertad y es el nawal de las aves.
Simboliza el pájaro sagrado Q’uq’umatz. Este día es propicio para pedir por la abundancia de los bienes como el dinero. Se quema el ajonjolí y el chocolate como ofrendas a Ajaw. Se encienden candelas de colmena pura y se le pide a Ajaw un buen negocio. Tz’ikin significa pájaro y simboliza la intermediación entre los seres humanos y Ajaw, representado por todo lo que hay en el espacio: el aire, las nubes, el frío y el calor. Son fuerzas invisibles, pero que El Corazón del Cielo y El Corazón de la Tierra las ha puesto a nuestro servicio y protección.
También es un día de desarrollo espiritual y, por tanto, de la plena realización humana. Es el día para agradecer los bienes materiales principalmente lo relacionado a dinero. Sin embargo, al no agradecer estos favores también puede traer la miseria.'
,'Pajaro'
,'Nahual'
);


INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ajmaq'
,'Esta palabra significa pecador en K\’iche\’. Es el día de los pecadores. Este día se dedica a pedir perdón por los pecados y por los pecadores. Es el día dedicado a los difuntos. El pecado es una columna de humo que nos oculta delante de la presencia de Dios. Nuestros antepasados dijeron: que el pecado es la ofensa que se hace directamente a Dios. No creer, no servir, no alabar al Corazón del Cielo, al corazón de la Tierra. Mak es ofensa a Dios y Wuqub’ qak’ix es ofensa al prójimo.
Es el día de los que no podemos ver, el día de los difuntos. El día de la fortaleza que nos da la historia de nuestro pasado. También es el día del castigo cuando no estamos actuando en concordancia con las enseñanzas que ellos nos legaron. Es el día del enojo de los difuntos. (BEA)
Ajmaq no es un mal día. Es un día para pedir perdón por los pecados. Son los días en los cuales se reza por protección, ya que de estos días puede venirle a uno, daño por sus pecados o sus malos pensamientos.
Es la muerte en casa, la muerte natural por enfermedad, la muerte tranquila. En ese día se habla con los difuntos, es para pedir perdón en el caso de los pecadores.
Significa: Purificar el espíritu de los muertos y vivos. Día para conmemorar los difuntos. Perdón para nuestros pecados.'
,'Búho, falta o culpa'
,'Nahual'
);


INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('No\'j'
,'Es la sabiduría y el conocimiento. Es el nawal de la inteligencia. Es el buen consejo, según los abuelos y abuelas. Es la sabiduría que viene del Formador y Creador. También es uno de los Cargadores del Tiempo. Día propicio para agradecer el conocimiento y pedir buenos pensamientos.
El que nace bajo la influencia del No\'j será inteligente, activo y tendrá buenos pensamientos, siempre y cuando sepa manejar las energías del día. Significa también idea y sabiduría. Según los mayas ningún hombre es sabio. Por eso, el hombre, para recibir ideas y consejos, debe consultar al Ajaw por medio del xukulem o la ceremonia maya. También puede realizar dichas consultas por medio del tz\'ite\', mediante la intermediación del Ajq\'ij, para recibir los consejos de los abuelos y abuelas. Dentro de la espiritualidad maya, el hombre tiene ideas pero no sabiduría. Por eso, es importante juntarse en consejo para unir ideas y formar así una ciencia. Nuestros antepasados se reunían en consejo bajo la protección del No\'j.
Es el día de la sabiduría. Es el día para tomar decisiones de manera particular o en consejo. Es un día que propicia la planificación de algún proyecto y de los lineamientos a seguir en la conducción de la comunidad y de la sociedad en general. También es el día en que nuestro pensamiento puede tener mayor fluidez.'
,'Idea o sabiduria'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Tijax'
,'Significa piedra y obsidiana. Es el símbolo del pedernal. Es la energía de la persona que cura en la cultura maya. Es el poder del trueno y el rayo. La persona que nace bajo la influencia de este día, puede ser un gran curandero o médico con mucha energía en las manos. Es ajq\'íj, cura enfermedades físicas y psicológicas. Puede arreglar fracturas de los huesos.
Una de las influencias negativas del día es que puede causar algún sufrimiento o malestar. Según los Ajq\'ijab\', es un día que come. Para no ser alcanzado por estas influencias negativas debe hacerse alguna ofrenda y solicitar la intermediación del Guía Espiritual.
Es un día que puede evitar la humillación y la ruina a causa de algo o alguien. Es un día de protección. Los que nacen es este día pueden llegar a ser coléricos y pueden destruir espiritual o emocionalmente a alguien. A veces, nadie les aguanta y resulta difícil comprenderlos.'
,'Pedernal u obsidiana'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kawoq'
,'Es el nawal de la mujer como comadrona. Es el día de la Vara Espiritual, le Pisom Q\'aq\'al. Es el relámpago. Es la dualidad del fuego sagrado en función de la espiritualidad maya. Es el día de la comunidad, de la familia, del grupo y de la sociedad. Es la energía que facilita las lluvias para darnos buenas cosechas, principalmente la del maíz.
Proporciona capacidad y habilidad para curar y orientar. Es la energía que fortalece a las Guías Espirituales. Mantiene la energía y la fertilidad. Es un día de mucha relación con la Madre Tierra y los elementos al proveer sabiduría para el manejo de las plantas medicinales. Facilita la unidad y el cuidado de la familia. Es el día de la mujer como esposa y madre que calienta el seno del hogar. También es un día especial para la plena realización de la mujer en la comunidad y en la sociedad.'
,'Trueno o dificultad'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Ajpu'
,'Es la luz y es la representación del Abuelo Sol. Significa cerbatanero, cazador, tirador y caminante. Es el día de la fuerza corporal y del triunfo del bien sobre los obstáculos. Es la representación del triunfo de Jun Ajpu e Ixbalamke sobre los señores de Xib\'alb\'a. Esta señal le fue dada a la abuela Ixmukane cuando retoñó el cañaveral que sembraron los dos muchachos en el patio de la casa.
Es el día del gran Ajaw, el padre y su representación solar, el día de la grandeza, de la fuerza de la vida. Es el que trae luz y claridad a los seres humanos y sobre toda la humanidad.
Es la fuerza regenerativa, el ciclo de la vida. La facultad para tener a toda la galaxia. Rige los eclipses lunares y solares. Es el momento de servir a los demás.'
,'Cerbatanero o señor principal'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Imox'
,'Símbolo de las fuerzas ocultas del universo manifestadas en demencia. Imox es el nombre de todas las cosas secretas. En general, es un día de influencias negativas. Es un día peligroso. Es símbolo del hemisferio izquierdo, la parte sutil de los seres humanos, es la sensibilidad. Es la esencia de nuestra conciencia y de nuestra mente.
Es el nawal o espíritu del agua. Genera movimiento pero, también, descontrol emocional. Es un día con influencias negativas y los que nacen en este día pueden convertirse en busca pleitos. Por eso, el día es propicio para las ceremonias de limpieza emocional.
Significa idiotez y locura. Es un día especial para pedir la abundancia de agua. Día para invocar por los ríos y nacimientos de agua para que no se sequen. Su trabajo es ayudar al hemisferio derecho del cerebro a realizar un mejor trabajo y a tomar una buena actitud.
Es el día de la perturbación mental o de la equivocación. No es indicado para tomar decisiones. Es el día en que se puede implorar y limpiar las perturbaciones provocadas por el enemigo en todos los órdenes de la vida.'
,'Locura o pez'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Iq\''
,'Es el viento y la vida. Es nawal de la lluvia. Es el día del Corazón del Cielo y Corazón de la Tierra. Es el aire y el soplo sagrado que da fuerza y vida. En este día se le pide al viento que se lleve los sufrimientos o las enfermedades de la persona.
Significa aire y aliento de vida. También, es el nawal de Junraqan (Huracán) convertido en tornado. Es uno de los Cargadores del Tiempo. Es, también, la respiración de la persona. Es el soplo sagrado, suave y apacible purificador del cuerpo, de la mente, del espíritu y de las emociones. Es el espacio invisible existente entre la materia. Es uno de los elementos que produce los fenómenos naturales.
El niño que nace en Iq\' es un niño que hace de todo pero no llega a nada. Es como el aire que toca y arrastra todo lo que encuentra en su camino. Puede construir pero también destruye.'
,'Viento o luna'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Aq\'ab\'al'
,'Es el símbolo de la mano y de la aurora formada por los primeros rayos del sol que se asoman sobre las montañas para disipar las tinieblas y la oscuridad de la noche.
Significa amanecer, aurora, luz, claridad, nuevo día. Es la renovación de energía. Es la llegada de la luz, del crepúsculo, la luz que se asoma detrás de los cerros y montañas.
Es el día del amanecer, del futuro promisorio que esperamos cada día, los mejores días para nuestro pueblo y para cada persona en particular.'
,'Amanecer, aurora y mano'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('K\'at'
,'Está relacionado con la palabra k\'atik que significa arder. Símbolo del fuego y de la red. En el ritual se hace mención del día como tiempo para el enredo y el desenredo. Es el que enreda y desenreda la vida.
Es la red donde se guarda la mazorca. La red con la que se pesca. La red donde mueren los peces. Significa cautiverio y ausencia de libertad. Signo de opresión que se ejerce sobre una comunidad.
Es el trastecito o el bracero que le entregan a uno cuando recibe el Pisom Q\'aq\'al o la Vara Sagrada. Para los nacidos en K\'at, en la espiritualidad maya, se les recomienda visitar al Ajq\'ij cada veinte días para efectuar su ceremonia. De lo contrario, pueden tener muchos enredos en el camino, en el trabajo y en la vida.'
,'Red, cautiverio o iguana'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kan'
,'Significa movimiento, Es el símbolo de la Gran Energía que creó el Universo. Es la Serpiente Emplumada o Q\'uq\'umatz. Es la evaluación humana y el desarrollo espiritual. Es la Sabiduría y el ciclo del tiempo. Es guardián del bosque. Es el día de la transformación.
significa justicia y equilibrio. Es un día muy fuerte y “enojado”. Es un día que puede traer malas influencias como el enojo y la riña. Sin embargo, es un símbolo de la verdad y es rápido e implacable cuando la justicia señala a alguien el lugar de los perdedores. La energía del día se presta para la solución de problemas.'
,'Serpiente emplumada'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kame'
,'Es el símbolo de la muerte. Símbolo de la disolución final de todas las cosas, buenas y malas. Significa tecolote y muerte. Es el renacimiento. Significado que se expresa a través de los sagrados granos de Tz\'ite\' o Palo de Pito. Es día propicio para pedir por la salud de los enfermos y para hacer ofrendas porque progrese el negocio.
Es la energía de las personas que mueren de manera natural. Puede restar fuerza a una persona o fortalecerla. Pronostica lo bueno y lo malo. Es la comunicación con las abuelas y abuelos a través de las candelas de cebo que se ofrecen en las ceremonias. Prudencia y protección para evitar accidentes. Es el Juez Supremo de todas las cosas. Nawal de la enfermedad y de la muerte.'
,'Muerte o dueño de la oscuridad'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kej'
,'El nawal del Kej es muy masculino y si una mujer nace en este día, tiene el carácter y voz fuertes y es de alguna manera varonil.
Simboliza venado, los cuatro sostenes, los cuatro pilares, es decir los cuatro puntos cardinales. Es el día fuerte y bueno. Es un día que aplasta. Es un día que demuestra su fuerza y su poder.
Los que nacen en este día: son de carácter fuerte y poseen fortaleza física. Son buenos defensores de otras personas, pero no pueden defenderse a sí mismos. pueden ser ricos y poseer muchos bienes. generalmente gozan de buena salud pues no se enferman con facilidad.
Son los cuatro puntos cardinales que sostienen el mundo; sostiene la vida del hombre. Los que nacen en este día son caminantes y tienen suerte en el negocio.
Es el día en que se pide fuerza, fortalecimiento, endurecimiento, para que uno sea duro, aguantador en caso de enfermedades, golpes, críticas, que uno aguante lo duro de la vida. Los que nacen en Kej podrían ser buenos guías espirituales mayas.'
,'Venado'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Q\'anil'
,'Este es un día propicio para las rogativas que se hacen con relación al maíz y para darle gracias a la divinidad de la tierra, por la cosecha de maíz.
Es el nawal de las cosechas. El que nace en este día es buen agricultor. Hay que buscar este tanto para la siembra como para la cosecha del maíz.
Simboliza los cuatro colores del maíz existentes en Meso América: rojo, negro, blanco y amarillo. Los cuatro colores de la piel de la humanidad. Los cuatro puntos cardinales del universo. En este día se pide buena cosecha. Es el día del agricultor.'
,'Semilla, simiente o conejo'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Toj'
,'Significa pago, ofrenda y agradecimiento. Se ponen presentes para el pago de alguna culpa o para enmendar algún error.
Es el día especial de las ofrendas. Se agradece el sol, el agua, el aire, el alimento y todo lo que nos rodea y lo que hemos recibido de la Madre Tierra. Los que nacen en Toj, algunas veces, son los que pagan la deuda de la familia, por eso es que pueden sufrir problemas de salud.'
,'Ofrenda, pago o lluvia'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Tz\'i\''
,'El antiguo significado de Tz\'i\' es tepescuintle. En idioma k\'iche\' es Lalo. Guardián de la milpa de la abuela Ixmukane de donde Ixk\'ik\' trajo la red llena de mazorcas, y que le ayudó a cumplir con su tarea de una manera mágica. En el Popol Wuj significa Jun Ajpu Wuch\', cazador tacuacín y Jun Ajpu Utiw, cazador coyote. También es guardián de los cerros, las montañas, las veredas y los barrancos.
Es la fidelidad, la autoridad y la ley. Por tanto, es el guardián de la ley natural y espiritual. Hace los papeles de secretario.
Puede influir en excesivas conductas sexuales. Por eso, algunos Guías Espirituales le atribuyen como símbolo del pecado, especialmente de impureza sexual. El que nace en este día puede resultar muy sexual, sea hombre o mujer. La intensidad de esta conducta dependerá del numeral que acompaña al Tz\'i\' como día de nacimiento.'
,'Perro o mapache'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('B\'atz\''
,'Es el símbolo del hombre y de la humanidad, de la realización del hombre.
Símbolo de continuidad con el pasado, como se ha englobado dentro del ritual. “Un buen día, de la perpetración de las ceremonias y costumbres de nuestros antepasados.
Es el día en que se realiza aquella parte del matrimonio en que se pide la novia, y el casamiento cuarenta días después, en un día B\'atz\' con un número más alto. En 8 B\'atz\' se presenta públicamente el aprendiz de sacerdote maya, y cuarenta días después se realiza el agradecimiento.
Simboliza el tiempo. Nuestros antepasados, los mayas representaron el tiempo imaginándolo como un hilo enrollado a un carrizo que se encuentra debajo de la tierra. Este hilo se va desenrollando a medida que el tiempo pasa. La historia se teje con el tiempo, así como el hilo teje los vestidos. El ciclo Nuevo Maya, Wajxaqib\' B\'atz\', en la ceremonia se ameniza con marimba y se baila alrededor del fuego. El B\'atz\' amarra y desata. Se le dice B\'atz\' porque gira. Y es el talento del ser humano.'
,'Mono o hilo'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('E\''
,'Simboliza el camino y el destino. Es el guía. Es el que nos lleva a un punto fijo. Uno de los Cargadores del Tiempo. Es la protección de los viajeros y caminantes. Conduce la vida espiritual y material.
Es el que hace posible la realización humana en todos los órdenes y en todas las manifestaciones. Pero también puede simbolizar los obstáculos con que los seres humanos se tropiezan en la continua búsqueda de esa realización.
Es un día bueno para desplazarse en cualquier lugar. En caso de peligro, el Ajaw E es el que da la protección. También es día bueno para agradecer el bienestar físico, la vida misma de las personas y el trabajo. Es un día muy sagrado. Por esta razón, se puede pedir su protección, como dice el Popol Wuj que no se caigan en la bajada ni en la subida del camino. Que no encuentren obstáculos ni detrás ni delante de ellos, ni cosa que los golpee. Concédeles buenos caminos, hermosos caminos planos.
Es el viaje, la travesía y el trayecto. Se ofrecen ceremonias o invocaciones para que limpie el camino de los peligros y de los accidentes.'
,'Camino o diente'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Aj'
,'Simboliza caña veral y milpa. Todo lo que se relaciona al hogar y la familia. Es el símbolo que dejó Jun Ajpu Ixb\'alamkej de su vida, cuando sembró la caña en medio del patio de la casa de la abuela Ixmukane. Aj es símbolo de la resurrección de Jun Ajpu e Ixb\'alamkej, quienes no murieron en manos de los señores de Xib\'alb\'a. Es el triunfo del bien sobre el mal.
Es el destino representado por el Nawal o los Nawales. 8 Aj es el día en el cual se establece el destino de uno, para llamarlo y reconocerlo.
También es elote, maíz tierno. Día relacionado con todo lo que concierne a los niños. Es día bueno y sobre todo para rezar por las criaturas.
También es el día de la enfermedad debilidad en el tejido óseo, pero de mucha energía espiritual. Es el hogar, la casa, todo lo que se relaciona con la casa. Los que nacen en Aj pueden ser sacerdotes mayas.'
,'Caña o cañaveral'
,'Nahual'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('I\'x'
,'Es el símbolo y energía de la Madre Tierra. Representa los lugares o centros ceremoniales donde se llevan a cabo las ceremonias. Son los cerros, las montañas, las planicies. Significa Jaguar.
Representa el altar maya o sea el tab\'al. Es un día especial para pedir la vida de los animales tanto domésticos como salvajes. Se le pide a Ajaw una buena cosecha de cualquier cultivo, en especial el de las verduras. En este día se encienden candelas de color verde, ya que simbolizan el color de la Madre Tierra.'
,'Jaguar'
,'Nahual'
);

/*---Funciones espirituales Nahuales---*/

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Agradecimiento por los bienes materiales, principalmente lo del dinero.','Tzikin')
,('Propicia buena suerte en el negocio.','Tzikin')
,('Día de invocación porque las aves no molesten los sembradíos.','Tzikin')
,('Día para la protección del negocio.','Tzikin')
,('Día para realizar invocaciones para que las siembras estén protegidas de los animales.','Tzikin')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Purificar el espíritu de los muertos y vivos.','Ajmaq')
,('Día para conmemorar los difuntos.','Ajmaq')
,('Perdón para nuestros pecados.','Ajmaq')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Agradecer el conocimiento y las ideas.','No\'j')
,('Agradecer la inteligencia.','No\'j')
,('Día para acrecentar la memoria.','No\'j')
,('Agradecer la inteligencia.','No\'j')
,('Día para pedir buenos consejos.','No\'j')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Es protector de la justicia.','Tijax')
,('Es fuerte y servicial.','Tijax')
,('Persona que corta el mal.','Tijax')
,('Curador de huesos.','Tijax')
,('Persona que pide que la tempestad no mate al campesino cuando esta en el campo.','Tijax')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Día del terapeuta (el que arregla huesos) y de la comadrona.','Kawoq')
,('Uno de los días para tratar enfermedades.','Kawoq')
,('Día para invocar por la familia (hogar) y la comunidad.','Kawoq')
,('Uno de los días especiales para pedir lluvia.','Kawoq')
,('Día para invocar para que los niños y niñas al nacer no vengan con defectos físicos.','Kawoq')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Día para ofrendar a los abuelos y abuelas fallecidas.','Ajpu')
,('Día para ofrendar a los abuelos y abuelas fallecidas.','Ajpu')
,('Se pide la vida y la fuerza.','Ajpu')
,('Día para pedir el triunfo del bien sobre el mal.','Ajpu')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Tratamiento de las perturbaciones mentales.','Imox')
,('Día especial para invocar por el agua.','Imox')
,('Invocaciones para mantener el equilibrio mental, espiritual, físico y emocional.','Imox')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Es día propicio para efectuar ceremonias al espíritu del aire o viento.','Iq\'')
,('Día para tratar enfermedades respiratorias, psicológicas y emocionales.','Iq\'')
,('Día de invocación para que el aire no destruya las siembras.','Iq\'')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Aclara los conocimientos.','Aq\'ab\'al')
,('Aclara el camino de la vida.','Aq\'ab\'al')
,('Conduce a nuevas oportunidades de la vida.','Aq\'ab\'al')
,('Ilumina las cosas ocultas.','Aq\'ab\'al')
,('Día para agradecer la creación del ser humano.','Aq\'ab\'al')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Se puede pedir por la liberación de algún preso.','K\'at')
,('Pedir porque el parto sea normal.','K\'at')
,('Día del desenvolvimiento e investigación de la ciencia.','K\'at')
,('Día para arreglar problemas emocionales y de amor.','K\'at')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Invocaciones por la igualdad y justicia.','Kan')
,('Día para desarrollar la fuerza física.','Kan')
,('Día para desarrollar el fuego interior y la evolución espiritua','Kan')
,('Uno de los días para realizar invocaciones por la lluvia.','Kan')
,('Día para alejar el enojo, la timidez y el mal carácter.','Kan')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Es un día bueno para el negocio.','Kame')
,('Día especial para comunicarse con los ancestros.','Kame')
,('Fortalecimiento de la vida.','Kame')
,('Día para pedir protección en los viajes.','Kame')
,('Día para contrarrestar enfermedades.','Kame')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('La cruz maya.','Kej')
,('Los cuatro puntos cardinales.','Kej')
,('Los cuatro sostenes de la tierra.','Kej')
,('Nawal de los defensores.','Kej')
,('Los cuatro colores de las energías.','Kej')
,('Caballo, fuerza, aguantador.','Kej')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Agradecimiento a Ajaw por los beneficios recibidos.','Toj')
,('Día para ponerse en paz con Ajaw, con los abuelos y abuelas y con el prójimo.','Toj')
,('Se hacen ceremonias para lograr el equilibrio, moral y espiritual.','Toj')
,('Día para retirar los sufrimientos, accidentes y enfermedades.','Toj')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Invocar por el orden y la exactitud.','Tz\'i\'')
,('Puede interpretar lo conocido y lo desconocido.','Tz\'i\'')
,('Se invoca el día para que guíe y cuide el camino.','Tz\'i\'')
,('Día para contrarrestar calumnias y ofensas.','Tz\'i\'')
,('Día de protección ante la ley.','Tz\'i\'')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Enlace matrimonial','B\'atz\'')
,('Mono, hilo, amarrador','B\'atz\'')
,('El tiempo. desarrollo de la evolución humana, dándonos la vida','B\'atz\'')
,('Nawal de medidor del tiempo y de toda clase de tejidos','B\'atz\'')
,('Es un buen día para recibir el destino como sacerdote Maya','B\'atz\'')
,('Orador, escultor, tallador y artista, música, flauta, deporte y siembra.','B\'atz\'')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Protección ante las tentaciones','E\'')
,('Protección ante los peligros del camino','E\'')
,('Día para iniciar un proyecto','E\'')
,('Día de protección de los pilotos','E\'')
,('Día para encauzar mejor el destino','E\'')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('El hogar y la familia de todas las generaciones tiernas','Aj')
,('El bastón del poder de las virtudes divinas, sensatez, la palabra sagrada.','Aj')
,('Caña, símbolo que dejó Jun Ajpu Ixbalanke de su vida, cuando sembró la caña en el patio, dueño del Hogar, y ternura.','Aj')
,('Nawal de las artes.','Aj')
;

INSERT INTO Funciones_espirituales (descripcion,nombre_elemento_nahual)
VALUES 
('Propicia energía espiritual y física.','I\'x')
,('Invocación por la lluvia.','I\'x')
,('Invocación por la vida de los animales.','I\'x')
,('Día de invocación por la salud de toda la humanidad.','I\'x')
,('Día para realizar invocaciones para que las siembras estén protegidas de los animales.','I\'x')
;

/*---Fortalezas y Debilidades---*/

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es bueno para el negocio.','Tzikin')
,('Es mensajero, paciente y amable.','Tzikin')
,('De buen temperamento.','Tzikin')
,('Tiene habilidad para el análisis y es buen observador.','Tzikin')
,('Desarrolla mejor su inteligencia.','Tzikin')
,('Puede tener dotes para la predicción de las cosas.','Tzikin')
,('Puede ser afortunado en lo material.','Tzikin')
,('Puede tener bien desarrollado la parte espiritual.','Tzikin')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Envidia','Tzikin')
,('Infidelidad','Tzikin')
,('Avaricia','Tzikin')
,('Tacañería','Tzikin')
,('En algún vicio','Tzikin')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Posee sabiduría, inteligencia','Ajmaq')
,('Buena memoria','Ajmaq')
,('Muy valiente','Ajmaq')
,('Se les facilita el diálogo','Ajmaq')
,('Prudente, discreto','Ajmaq')
,('Buenos maestros y consejeros','Ajmaq')
,('Muy sociable','Ajmaq')
,('Es profundo','Ajmaq')
,('Es serio','Ajmaq')
,('Realista','Ajmaq')
,('Predicador','Ajmaq')
,('Comunicativo','Ajmaq')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Pecador','Ajmaq')
,('Enamorado','Ajmaq')
,('Alcohólico','Ajmaq')
,('Destructores de la herencia','Ajmaq')
,('Mentirosos','Ajmaq')
,('Afamados','Ajmaq')
,('Resentido','Ajmaq')
,('Ladrón','Ajmaq')
,('Adúltero','Ajmaq')
,('Fríos e insensibles','Ajmaq')
,('Minimizan los sentimientos de los demás','Ajmaq')
,('Interesados en la autoridad y posición social y política','Ajmaq')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es poseedor de muchos conocimientos.','No\'j')
,('Es inteligente y es consejero.','No\'j')
,('Puede llegar a ser científico.','No\'j')
,('Es ordenado y creativo.','No\'j')
,('Es justo y humanista.','No\'j')
,('Es buen estudiante.','No\'j')
,('Puede llegar a ser un buen líder.','No\'j')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede caer en el orgullo.','No\'j')
,('Se puede enojar con facilidad.','No\'j')
,('Le cuesta tomar decisiones.','No\'j')
,('Puede ser individualista y egoísta.','No\'j')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es protector de la justicia.','Tijax')
,('Es fuerte y servicial.','Tijax')
,('Es incansable por lo que quiere lograr.','Tijax')
,('Puede llegar a ser Guía Espiritual.','Tijax')
,('Posee habilidad para arreglar fracturas en los huesos.','Tijax')
,('Se puede defender muy bien ante cualquier problema.','Tijax')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede ser violento y enojado.','Tijax')
,('Puede sufrir enfermedades.','Tijax')
,('Puede ofenderse fácilmente.','Tijax')
,('Puede caer en la venganza y en los pleitos.','Tijax')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es equilibrado y cariñoso.','Kawoq')
,('Vive y trabaja por su familia.','Kawoq')
,('Si es mujer, puede ser comadrona.','Kawoq')
,('Puede llegar a ser Guía Espiritual.','Kawoq')
,('Es buen comunicador y expositor.','Kawoq')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede caer en el enojo.','Kawoq')
,('A veces es perseguido por los problemas y los pleitos.','Kawoq')
,('No es muy afortunado en el amor.','Kawoq')
,('Se le puede culpar de todo lo que pasa.','Kawoq')
,('Muy hablador.','Kawoq')
,('Se puede meter en donde no es llamado.','Kawoq')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Puede desarrollar mejor la inteligencia.','Ajpu')
,('Puede tener dotes de artista.','Ajpu')
,('Es alegre.','Ajpu')
,('Se defiende muy bien.','Ajpu')
,('Puede llegar a ser Guía Espiritual.','Ajpu')
,('Es bueno para la cacería.','Ajpu')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede caer en el enojo.','Ajpu')
,('Puede ser tajante.','Ajpu')
,('Es delicado.','Ajpu')
,('Puede enfermarse.','Ajpu')
,('Puede evadir responsabilidades.','Ajpu')
,('Le dificulta aceptar correcciones.','Ajpu')
,('Puede tener una actitud autosuficiencia.','Ajpu')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Puede desarrollar la clarividencia.','Imox')
,('Puede captar los mensajes y señales de la naturaleza.','Imox')
,('Puede desarrollar con mayor grado su hemisferio izquierdo.','Imox')
,('Puede tener buenas iniciativas.','Imox')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Se le olvida con facilidad las cosas.','Imox')
,('Puede resultar muy inseguro.','Imox')
,('Puede tener reacciones violentas.','Imox')
,('Es ordenado en sus cosas.','Imox')
,('Puede tener un carácter variado.','Imox')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Puede adaptarse a cualquier situación.','Iq\'')
,('Posee fuerza física.','Iq\'')
,('Es soñador e imaginativo.','Iq\'')
,('Puede tener ideas futuristas.','Iq\'')
,('No asusta casi nada.','Iq\'')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('De carácter muy fuerte.','Iq\'')
,('Puede resultar inseguro e impulsivo.','Iq\'')
,('Puede caer en la infidelidad con su pareja.','Iq\'')
,('Puede sufrir algunos problemas sociales y económicos.','Iq\'')
,('Le encanta decir directamente las cosas.','Iq\'')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es madrugador, alegre y sereno.','Aq\'ab\'al')
,('Puede tener buen carácter.','Aq\'ab\'al')
,('Puede tener dotes para tratar enfermedades.','Aq\'ab\'al')
,('Puede ser Guía Espiritual.','Aq\'ab\'al')
,('Son fuertes, dinámicos y astutos.','Aq\'ab\'al')
,('Puede tener seguridad mental y física.','Aq\'ab\'al')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('No es bien reconocido en su tierra.','Aq\'ab\'al')
,('Puede encontrar el fracaso.','Aq\'ab\'al')
,('Puede caer en la mentira y la traición.','Aq\'ab\'al')
,('Puede tener dificultades en lo económico.','Aq\'ab\'al')
,('Es un poco reservado y aislado.','Aq\'ab\'al')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Persona sincera y ordenada.','K\'at')
,('Puede ser líder.','K\'at')
,('Puede ser una persona muy afortunada en lo económico.','K\'at')
,('Puede ser Guía Espiritual.','K\'at')
,('Persona muy activa y curiosa.','K\'at')
,('Puede recordar las cosas facilidad.','K\'at')
,('Puede ser muy tajante en su decisión.','K\'at')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede caer en los chismes y en el enojo.','K\'at')
,('Puede resultar nervioso.','K\'at')
,('Puede perder las cosas con facilidad.','K\'at')
,('Puede estar propenso a malas influencias.','K\'at')
,('Puede caer en el individualismo.','K\'at')
,('Puede caer en el orgullo.','K\'at')
,('Con tendencia a meterse en los problemas ajenos.','K\'at')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Persona con mucho conocimiento.','Kan')
,('Puede tener mucha habilidad para la intuición.','Kan')
,('Muy inteligente.','Kan')
,('Practica la sinceridad y la justicia.','Kan')
,('Puede llegar a ser líder.','Kan')
,('Puede tener habilidad para los pronósticos y la clarividencia.','Kan')
,('Puede ser Guía Espiritual.','Kan')
,('Es humilde.','Kan')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede estar influenciado por el enojo y la traición.','Kan')
,('Puede caer en el resentimiento y la avaricia.','Kan')
,('Es desconfiado y sorpresivo.','Kan')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Puede ser médico.','Kame')
,('Es fuerte ante sus enemigos.','Kame')
,('Es inteligente, respetuoso y seguro.','Kame')
,('Puede controlarse.','Kame')
,('Puede desarrollar habilidades para la clarividencia.','Kame')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede tener un temperamento fuerte.','Kame')
,('Propenso al suicidio.','Kame')
,('Puede sufrir mucho al no cumplir con sus obligaciones con la Madre Naturaleza.','Kame')
,('Puede tener tendencias a la mentira y a la infidelidad con su pareja.','Kame')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Buenos defensores','Kej')
,('Poseen riquezas','Kej')
,('Gozan de buena salud','Kej')
,('Son buenos guías espirituales','Kej')
,('Son muy sociables','Kej')
,('Son fuertes, inteligentes, responsables, positivos y triunfadores.','Kej')
,('En el matrimonio son muy equilibrados','Kej')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede hacer el mal con su pensamiento','Kej')
,('Tiene un carácter fuerte','Kej')
,('Pueden ser muy compulsivos','Kej')
,('Les gusta la popularidad y el poder','Kej')
,('Podrían ser autocráticos, manipuladores etc.','Kej')
,('Les gusta la comodidad','Kej')
,('Son muy reservados','Kej')
,('Autoritarios','Kej')
,('Suelen ser exigentes','Kej')
,('Les gusta hundir y aplastar a las personas.','Kej')
,('Podrían ser necios','Kej')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Afortunados en las siembras o crianza de animales','Q\'anil')
,('Muy fértiles en tener hijos','Q\'anil')
,('Son buenos comerciantes','Q\'anil')
,('Suelen tener signos de intensa energía en su cuerpo','Q\'anil')
,('Extremadamente inteligentes','Q\'anil')
,('Les gusta hablar, debatir, leer, escribir','Q\'anil')
,('Aficionados al ejercicio físico o la danza','Q\'anil')
,('Mente compleja','Q\'anil')
,('Se interesan de detalles','Q\'anil')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Padecen de dolor de cabeza, resfriados','Q\'anil')
,('Podrían destruir su propio hogar','Q\'anil')
,('Incrédulos','Q\'anil')
,('Creen en su imaginación','Q\'anil')
,('Regularmente son nerviosos','Q\'anil')
,('Pueden ser cobardes','Q\'anil')
,('Autodestructivos','Q\'anil')
,('Evitan las grandes responsabilidades','Q\'anil')
,('Propensos a adquirir vicios relacionados con estimulantes','Q\'anil')
,('Muy agresivos, enojados','Q\'anil')
,('A veces son obsesivos, compulsivos','Q\'anil')
,('Llegan a donde no son llamados','Q\'anil')
,('Orgullosos','Q\'anil')
,('Suelen ser egoístas','Q\'anil')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('De grandes virtudes.','Toj')
,('Es creativo, comunicativo y dinámico.','Toj')
,('Practica la sinceridad.','Toj')
,('Es analista, imaginativo e intuitivo.','Toj')
,('De carácter abierta.','Toj')
,('Es romántico.','Toj')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede sufrir enfermedades.','Toj')
,('Puede caer en la miseria.','Toj')
,('Puede tener inestabilidad mental.','Toj')
,('Puede estar expuesto a accidentes.','Toj')
,('Puede caer en el orgullo y la vanidad.','Toj')
,('Vicioso y orgulloso','Toj')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Atento, valiente, respetado, justo.','Tz\'i\'')
,('Es defensor de otras personas.','Tz\'i\'')
,('Es cordial.','Tz\'i\'')
,('Logra lo que busca.','Tz\'i\'')
,('Buen investigador y presiente las cosas o actos.','Tz\'i\'')
,('Enamorado.','Tz\'i\'')
,('Es el día de los abogados','Tz\'i\'')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede resultar vicioso e infiel.','Tz\'i\'')
,('Puede caer en la mentira.','Tz\'i\'')
,('Puede tener mucha tendencia sexual.','Tz\'i\'')
,('Puede resultar con temperamento fuerte.','Tz\'i\'')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Inteligente, astuto','B\'atz\'')
,('Amable','B\'atz\'')
,('Reservado','B\'atz\'')
,('Suelen imitar lo que ven','B\'atz\'')
,('Tienen buenas señales','B\'atz\'')
,('Adinerados','B\'atz\'')
,('Maestros de todas las artes','B\'atz\'')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Inseguro','B\'atz\'')
,('Haragán','B\'atz\'')
,('Enojado, agresivo','B\'atz\'')
,('Envidioso, calumniador','B\'atz\'')
,('Mala imaginación, incrédulo','B\'atz\'')
,('Ambicioso de cualquier cosa','B\'atz\'')
,('Débil de voluntad','B\'atz\'')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es amable y trabajador','E\'')
,('Es guía y consejero','E\'')
,('Es cariñoso y alegre','E\'')
,('Es viajero y puede ser comerciante','E\'')
,('Afortunado, decidido, comprensivo','E\'')
,('Cuidadoso en las cosas','E\'')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Desconfiado e inseguro','E\'')
,('Algunas veces se puede resentir','E\'')
,('Es variable con su carácter','E\'')
,('Es nervioso y frágil','E\'')
,('Impaciente en algunas ocasiones','E\'')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Autoridad','Aj')
,('Inteligente','Aj')
,('Estricto','Aj')
,('Es respetado por sus amigos','Aj')
,('Principios sólidos en el terreno moral y ético','Aj')
,('Atraído por la religión o los estudios filosóficos y teológicos','Aj')
,('Trabajador','Aj')
,('Bromista','Aj')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Regaña','Aj')
,('Celoso','Aj')
,('Nervioso','Aj')
,('Expuesto a discutir y juzgar','Aj')
,('Hace lo que le plazca','Aj')
,('Extremista, no es de moderación','Aj')
,('Hace bromas pesadas','Aj')
,('No es constante en la fe','Aj')
,('Variable','Aj')
,('Sufre con frecuencia, se enferma en la niñez','Aj')
,('Alcohólico','Aj')
,('Destructor','Aj')
,('Una vida variable, de dolor','Aj')
,('Tristeza y alegría','Aj')
;

INSERT INTO Fortalezas (descripcion,nombre_elemento_nahual)
VALUES 
('Es paciente, fuerte, responsable, valiente, respetuoso, vigoroso y atrevido.','I\'x')
,('Es decisivo y realista.','I\'x')
,('Es de buen corazón.','I\'x')
,('Buen padre de familia.','I\'x')
,('Puede ser líder y famoso si sabe encauzar sus energías.','I\'x')
;

INSERT INTO Debilidades (descripcion,nombre_elemento_nahual)
VALUES 
('Puede llegar a tener un carácter fuerte.','I\'x')
,('Algunas veces se enoja y se impacienta.','I\'x')
,('Su carácter le puede hacer prepotente, orgulloso, colérico, serio y vengativo.','I\'x')
;


/*---Energias---*/

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Jun'
,'Principio de Unidad.
Propósito, Atraer, Unificar.
El principio y origen, el ser humano como un todo.
La unidad establece el propósito, el objeto y la meta de acción por pequeña que esta sea.
La unidad es el todo, la única verdad absoluta, es la creación mental del todo.
En el circulo de la perfección todos los seres están unidos inseparablemente sin importar su dimensión de manifestación, la creencia de que no es así, crea una grieta en la relación original y esa grieta en el campo de energía crea una polaridad (como proceso de cicatrización) que ha de convertirse en vibración.'
,'El Todo, La Unidad, El Absoluto, La Pureza'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Keb\''
,'Principio de Polaridad.
Desafió, Estabilizar, Polarizar.
Esqueleto y esencia, Masculino y femenino; forman el principio generador dual, la simetría dual de los seres. Son los extremos de un mismo fenómeno, opuestos idénticos en su naturaleza: espíritu y materia, luz y oscuridad, yin y yang.
Armonizar la vibración es resolver la polaridad equilibrando los dos extremos, o sea, incluyéndolos
Si todo es luz, las formas se difuminan, por eso es necesario el contraste de las sombras.
Cultivar nuestra resonancia es armonizar nuestra vibración con resonancias superiores como la planetaria, solar y galáctica.'
,'La Pareja, La Polaridad, El Complemento, El Apoyo'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Oxib\''
,'Principio del ritmo o compensación.
Servicio, Unir, Activar.
Flujo y reflujo, ascenso y descenso, acción y relación; es el movimiento entre los polos de todos los planos (físico, mental y espiritual).
Cada fenómeno, cada proceso tiene su propio ritmo: todo tiene un inicio, nace, crece, muere y renace. Liquido precioso que da calor y energía al cuerpo, sangre, el agua de la naturaleza, lluvia.
Al crear polaridades, desencadenamos eventos, circunstancias que experimentamos y superamos, las acciones que producen un campo de negatividad (ignorancia, oscuridad espiritual) son kharmas, las acciones que suprimen y corrigen la negatividad (sabiduría) son Dharmas y crean un campo benéfico.'
,'Los Resultados, Los Hijos, El Temor, Los Frutos'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kajib\''
,'Principio de la medida.
Forma, Medir, Definir.
El cuatro como medida de todas las estructuras materiales (la pirámide), entra siempre en relación con la composición trina de lo espiritual, formando la estructura Septernal de todo lo que Es.
El poder del ordenamiento matemático del macro y microcosmos. Todo cuanto existe es según la medida de la ley del todo.
Establece los limites de las estructuras; las 4 fuerzas principales, 4 rumbos sagrados, 4 elementos: calor, viento y agua sobre tierra. Cuatro son las regiones mayas, 4 los elementales, 4 los nucleótidos, 4 los elementos químicos primarios, 4 las razas cósmicas, rumbos cardinales, estaciones solares, chacras de personalidad, etc'
,'La Solidez, La Fortaleza, La Felicidad, La Estabilidad'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Job\''
,'Principio de lo nuclear.
Esplendor, Mandar, Dar poder.
La capacidad de realización, la movilidad de los dedos, percibir la belleza de la naturaleza, el 5to. punto o centro del Universo.
Toda unidad, por pequeña que sea, objetiva o subjetiva comporta un núcleo como atractor y una periferia de manifestación (núcleo del átomo y electrones, por ejemplo).
Deriva la concepción del matiz cromático de cinco, que es la acción de la quinta fuerza galáctica; el matiz del color da la entonación.'
,'El Amor, El Trabajo, El Esfuerzo, Analizar'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Waqib\''
,'Principio del equilibrio orgánico: 2x3. (Polaridad por ritmo)
Igualdad, Equilibrar, Organizo.
La polaridad del ritmo genera el principio orgánico, la ley del ordenamiento Hexagonal de las estructuras cristalinas y celulares. La tendencia de las estructuras ligadas al proceso de la vida es la de alcanzar el equilibrio relativo, estado de realización intermedio, a partir del cual continuar el movimiento hacia la conciencia superior.
El principio del Diferencial de Potencial aporta la resolución de situaciones a través de saltos cualitativos entre estados de la energía. Nada de cuanto sucede es casual, todo esta sujeto al poder de la ley primigenia; todo efecto tiene su causa y a la vez es causal de otros efectos, la Causa Centro Primera es el Creador.
Su acción es equilibrar, el principio de la integración de nuestra introspección'
,'El Mundo Material, La Materia, La Amistad, La Reacción'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Wuqub\''
,'Principio de unificación mental. (Poder místico)
Armonización, Inspirar, Canalizo.
Los hombres somos unidades resonantes dentro de un todo Mental, el orden material es un fractal del ordenamiento mental del universo; nosotros no controlamos la mente, somos pensados por la mente, vivimos inmersos en ella.
El siete canaliza energía inspirando la armonización. Representa las fases lunares de 7 días, el segundo paso de la transformación interior; el intelecto activo, inquieto, la influencia lunar.'
,'El Equilibrio, El Movimiento, El Integrar, El Realizar'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Wajxaqib\''
,'Principio de Resonancia armónica. (Octavas resonantes)
Integridad, Modelar, Armonizar.
Así como en música, las escalas se suceden en octavas, las energías vibratorias contactan y resuenan con sus respectivas equisonantes en los niveles superiores e inferiores de manifestación, como también con los armónicos secundarios derivados de la vibración.
Las octavas son el vehículo de información del todo, como ley de la armonía; el tono ocho otorga la habilidad de dar forma, de modelar, de describir aspectos del nivel inmediatamente superior de vibración.
Ocho es la esencia interior, el ser como recipiente de la esencia cósmica, el 2 veces NAHUI (4), conjuga las 4 direcciones (+) y los 4 rincones (X) del mundo.'
,'La Espiritualidad, El Arte, La Alegría, La Energía Masculina'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('B\'elejeb\''
,'Principio de la Periodicidad cíclica.
Intención, Realizar, Pulso.
Todo cuanto se mueve lo hace de acuerdo a la Ley Cósmica; la periodicidad cíclica, no la repetición de los sucesos, es la cualidad por la que un evento se asocia a otros anteriores y posteriores en el tiempo como fenómenos resonantes (ciclos entre ciclos).
Representa lo femenino del principio generatriz (Yin), el polo creativo en el cual se manifiesta la generación o producción de formas, energías y conceptos nuevos dinamizadores del proceso evolutivo de la vida, el objetivo; la intención de poner la acción en movimiento'
,'La Realización, El Poder, Acción, La Energía Femenina'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Lajuj'
,'Principio de la Manifestación.
Manifestar, Producir, Perfecciono.
El movimiento como energía se manifiesta en cada nivel u octava de vibración (dimensión); todo lo que se manifiesta, es decir, que cobra presencia (objetiva o subjetiva) se puede medir y viceversa.
La manifestación de la energía en todos los planos, implica vencer o enfrentar los obstáculos inherentes al plano dimensional y al tipo de presencia a manifestarse. Las manos juntas, la dualidad de las manos (5+5=10), equilibrándose mutuamente, como flecha al objetivo.'
,'La Ley, La Autoridad, La Rectitud, La Impecabilidad'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Julajuj'
,'Principio de las Estructuras disonantes.
Liberación, Divulgar, Disolver.
Todas las estructuras, cualquiera sea su naturaleza, tienden a ingresar a nuevas realidades; el movimiento perpetuo implica mutación y cambio constante, en la vida vamos haciendo conscientes estas nuevas realidades.
Las estructuras que se "desordenan" como un aparente caos para el mundo material, en realidad están ingresando a otro orden superior no comprensible desde la tridimensional. La grieta que nos escinde del todo es la no evolución, nuestra tendencia a quedarnos resguardados donde nos sentimos cómodos y seguros es un espejismo; un orden superior que hoy asimilamos como caos esta a la espera de nuestro ingreso, es la quinta dimensión que trasciende a las anteriores'
,'Compartir, Separar, Las Posibilidades, Dejarse-abandonarse'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Kab\'lajuj'
,'Principio de la Estabilidad compleja: 2x6.
Cooperación, Universalizar, Dedicación.
Es la polarización del equilibrio orgánico, mediante el cual cada especie gana su propio nivel de frecuencia armónica, es decir, su estatuto como especie: código, nicho, hábitat, etc. Genera las fuerzas conservacionistas de los organismos vivos, incluida la tierra, como cooperación simbiotica.'
,'La Familia, La Comunidad, Los Grupos, La Seguridad'
,'Energia'
);

INSERT INTO Elemento_Nahual (nombre_elemento_nahual,significado,simbolo,nombre_elemento_calendario)
VALUES ('Oxlajuj\’'
,'Principio del movimiento universal o principio de vibración.
Presencia, Trascender, Perdurar.
Todo cuanto existe esta en perpetuo movimiento, desde lo mas sutil con las vibraciones, hasta lo mas denso y pesado como expresión de las bajas frecuencias, a tal punto que estos extremos parecen en reposo.
El movimiento es la energía que fluye desde la fuente y regresa a ella. Este principio otorga trascendencia a todo lo que funciona con y obedece a la ley del uno, trascendencia es la cualidad de perdurar mas allá del tiempo y del espacio. La unión total de todos los números anteriores, el ultimo numero representa el conocimiento interno, la introspección, centralidad y transparencia, Sabiduría del Universo, La Madre Tierra, respeto a lo que existe, florece y da frutos.'
,'La Magia, EL Poder del Camino, La Teurgia, El Trasmutar'
,'Energia'
);

/*---Juegos---*/

INSERT INTO Juego (nombre_juego,descripcion,reglas)
VALUES ( 'matematica maya',
'El juego consiste en que se dan dos numeros mayas del 0 al 9 y el jugador tiene que sumarlos y dar la respuesta en nuemros en formarto decimal',
'por cada suma hecha se da 1 punto, si falla, el juego termina y se reinicia la puntuacion'
);

INSERT INTO Juego (nombre_juego,descripcion,reglas)
VALUES ( 'trivia',
'Es una trivia aprenda',
'Contesta las preguntas correctamente bye '
);

/*---Preguntas---*/
INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( 'El calendario solar maya es llamado Haab ¿Que significa la palabra \"haab\"?',
'/resources/images/trivia/questions/haab.jpg',
0,
'Haab significa Año en el lenguaje maya',
'Año',
'Sol',
'Calendario',
'Calendario del sol'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( 'El calendario lunar maya es llamado Tzolkin  ¿Que significa la palabra \"Tzolkin”\"?',
'/resources/images/trivia/questions/tzolkin.jpg',
0,
'Tzolkin significa la cuenta de los dias',
'La cuenta de los dias',
'Los dias contados',
'Dias lunares',
'Calendario de la luna'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿Que sistema numerico utiliza la matematica maya?',
'/resources/images/trivia/questions/math.jpg',
0,
'La matematica maya usa la base 20 (vigesimal)',
'Vigesimal(20)',
'Decimal(10)',
'Octal(8)',
'Binario(2)'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿Que simbolo representa el 0 en la matematica maya?',
'/resources/images/trivia/questions/cero.jpg',
2,
'La semilla o concha simboliza el 0',
'El punto',
'La raya',
'La semilla',
'El cero'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿Cual es el calendario maya mas similiar al de la actualidad?',
'/resources/images/trivia/questions/haab2.jpg',
1,
'El Haab, es el más similar al calendario que utilizamos en la actualidad con 365 días en su recuento',
'Ninguno',
'Haab',
'Tzolkin',
'Nihiliano'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿Cual es la diferencia entre el calendario Tzolkin y Cholquij?',
'/resources/images/trivia/questions/cholquij.jpg',
3,
'El Cholq’ij también recibe el nombre de calendario sagrado o Tzolkin',
'Su uso',
'Los dias',
'Los meses',
'Ninguna'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿Que se observo para crear el calendario maya?',
'/resources/images/trivia/questions/haab3.jpg',
3,
'El calendario maya se creó a partir de la observación de fenómenos astronómicos.',
'Tiempo en caer la noche',
'El pasar de las horas',
'Fenomenos naturales',
'Fenomenos astronomicos'
);

INSERT INTO Pregunta (question ,rutaImagen,numRespuesta,comentario,opcion1,opcion2,opcion3,opcion4)
VALUES ( '¿En qué época se desarrolló la civilización maya?',
'/resources/images/trivia/questions/civimaya.jpg',
1,
'Los primeros registros de la civilización maya datan del 1800 antes de Cristo.',
'1800 d.c',
'1800 a.c',
'1700 d.c',
'1900 a.c'
);

