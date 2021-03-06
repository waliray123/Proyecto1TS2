const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const dotenv = require('dotenv');
dotenv.config({ path: './env/.env' });

app.use('/resources', express.static('public'));
app.use('/resources', express.static(__dirname + '/public'));

app.set('view engine', 'ejs');

const bcryptjs = require('bcryptjs');

const session = require('express-session');
app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

const connection = require('./utils/db');

/*---RUTAS---*/
app.get('/login', (req, res) => {
    res.render('login', {'name': req.session.name });
});

app.get('/register', (req, res) => {
    res.render('register', {'name': req.session.name });
});

app.get('/calendarioHaab', (req, res) => {
    let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Haab\'';
    connection.query(queryCons, function(err, result) {
        if (err) {
            throw err;
        } else {
            //JSON.stringify()
            //obj = {informacion: result};
            obj = JSON.stringify(result);
            res.render('calendarioHaab', { 'informacion': result,'name': req.session.name });
        }
    });
});

app.get('/trivia', (req, res) => {
    let queryCons = 'SELECT * FROM Pregunta ORDER BY RAND() LIMIT 10';
    connection.query(queryCons, function(err, result) {
        if (err) {
            throw err;
        } else {
            //JSON.stringify()
            //obj = {informacion: result};
            obj = JSON.stringify(result);
            res.render('trivia', { 'informacion': result,'name': req.session.name });
        }
    });
});

app.get('/ruedaCalendarica', (req, res) => {
    let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Rueda Calendarica\'';
    connection.query(queryCons, function(err, result) {
        if (err) {
            throw err;
        } else {
            obj = JSON.stringify(result);
            res.render('ruedaCalendarica', { 'informacion': result,'name': req.session.name });
        }
    });
});

app.get('/calendariocholquij', (req, res) => {
    let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Cholquij\'';
    connection.query(queryCons, function(err, result) {
        if (err) {
            throw err;
        } else {
            obj = JSON.stringify(result);
            res.render('calendariocholquij', { 'informacion': result,'name': req.session.name });
        }
    });
});

app.get('/calculadora', (req, res) => {
    let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Rueda Calendarica\'';
    connection.query(queryCons, function(err, result) {
        if (err) {
            throw err;
        } else {
            obj = JSON.stringify(result);
            res.render('calculadora', { 'informacion': result,'name': req.session.name });
        }
    });
});

app.get('/puntuaciones', (req, res) => {
    let queryCons1 = 'SELECT * FROM mayaweb.Usuario_Juego WHERE Juego_nombre_juego = \'trivia\' ORDER BY puntuacion DESC LIMIT 10;';
    let queryCons2 = 'SELECT * FROM mayaweb.Usuario_Juego WHERE Juego_nombre_juego = \'matematica maya\' ORDER BY puntuacion DESC LIMIT 10;';
    connection.query(queryCons1, function(err, result) {
        if (err) {
            throw err;
        } else {
            obj = JSON.stringify(result);
			connection.query(queryCons2, function(err2, result2) {
				if (err2) {
					throw err2;
				} else {
					obj = JSON.stringify(result);
					res.render('top', { 'informacion': result,'informacion2': result2,'name': req.session.name });
				}
			});
        }
    });
});

app.post('/register', async(req, res) => {
    const user = req.body.user;
    const name = req.body.name;
    const lastname = req.body.lastname;
    const pass = req.body.pass;
    let passwordHash = await bcryptjs.hash(pass, 8);
    connection.query('INSERT INTO Usuario SET ?', { nombre_usuario: user, nombre: name, apellido: lastname, password: passwordHash }, async(error, results) => {
        if (error) {
            console.log(error);
        } else {
            res.render('register', {
                alert: true,
                alertTitle: "Registration",
                alertMessage: "??Successful Registration!",
                alertIcon: 'success',
                showConfirmButton: false,
                timer: 1500,
                ruta: '',
				'name': req.session.name
            });
            //res.redirect('/');         
        }
    });
});

app.post('/auth', async(req, res) => {
    const user = req.body.user;
    const pass = req.body.pass;
    let passwordHash = await bcryptjs.hash(pass, 8);
    if (user && pass) {
        connection.query('SELECT * FROM Usuario WHERE nombre_usuario = ?', [user], async(error, results, fields) => {
            if (results.length == 0 || !(await bcryptjs.compare(pass, results[0].password))) {
                res.render('login', {
                    alert: true,
                    alertTitle: "Error",
                    alertMessage: "USUARIO y/o PASSWORD incorrectas",
                    alertIcon: 'error',
                    showConfirmButton: true,
                    timer: false,
                    ruta: 'login',
					'name': req.session.name
                });

                //Mensaje simple y poco vistoso
                //res.send('Incorrect Username and/or Password!');				
            } else {
                //creamos una var de session y le asignamos true si INICIO SESSION       
                req.session.loggedin = true;
                req.session.name = results[0].nombre_usuario;
                res.render('login', {
                    alert: true,
                    alertTitle: "Conexi??n exitosa",
                    alertMessage: "??LOGIN CORRECTO!",
                    alertIcon: 'success',
                    showConfirmButton: false,
                    timer: 1500,
                    ruta: '',
					'name': req.session.name
                });
            }
            res.end();
        });
    } else {
        res.send('Please enter user and Password!');
        res.end();
    }
});

app.get('/', (req, res) => {
    if (req.session.loggedin) {
        res.render('index', {
            login: true,
            'name': req.session.name
        });
    } else {
        res.render('index', {
            login: false,
            'name': 'Debe iniciar sesi??n',
        });
    }
    res.end();
});

app.use(function(req, res, next) {
    if (!req.user)
        res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
    next();
});

app.get('/logout', function(req, res) {
    req.session.destroy(() => {
        res.redirect('/') // siempre se ejecutar?? despu??s de que se destruya la sesi??n
    })
});

app.get('/matematica-maya', function(req, res) {
    if (req.session.loggedin) {
        res.render('matematicaMaya', {
            login: true,
            'name': 'Nombre de usuario: ' + req.session.name
        });
    } else {
        res.render('matematicaMaya', {
            login: false,
            'name': 'Debe iniciar sesi??n para guardar los puntos',
        });
    }
});

app.post('/matematica-maya-up-points', async (req, res) => {
	const contPts = req.body.contPts;
	let puntuacionDB = 0;
	let supero_puntuacion = false;
	//realizar la subida
	if (req.session.loggedin) {
		const nombre_juego = 'matematica maya';
		//inserta si no esta
		connection.query('INSERT INTO usuario_juego SET ?', { Usuario_nombre_usuario: req.session.name, Juego_nombre_juego: nombre_juego, puntuacion: contPts}, async (error, results) => {
			if (error) {
				// console.log(error.code);
			connection.query('SELECT puntuacion from usuario_juego WHERE Usuario_nombre_usuario=? and Juego_nombre_juego = ?', [req.session.name,nombre_juego], async (error, results, fields) => {
					if (results.length != 0) {
						puntuacionDB = results[0].puntuacion;
						// console.log('punt db: ' + puntuacionDB);
						if (contPts > puntuacionDB) {
							//actualiza si esta
						connection.query('UPDATE usuario_juego SET puntuacion= ? WHERE Usuario_nombre_usuario= ? and Juego_nombre_juego = ?',[contPts,req.session.name,nombre_juego], async (error, results) => {
								if (error) {
									console.log('error en update '+error);						
								}
								else{
									supero_puntuacion = true;
									console.log('dato actualizado');
									res.json({
										status: 'success',
										supero_puntuacion: supero_puntuacion,
										pointsAnt: puntuacionDB,
										pointsNew: contPts
									});
									res.end();
								}
							})
						}else{
							console.log('puntuacion actual menor a la db')
							responseMateMaya(res);
						}
					}
				});	
			}else{
				console.log('dato insertado')
				responseMateMaya(res);
			}
		});
	}else{
		responseMateMaya(res);
	}
	
})

function responseMateMaya (res) {
	res.json({
		status: 'success',
		supero_puntuacion: false
	});
	res.end();
}

app.post('/trivia-maya-up-points', (req, res) => {
    const contPts = req.body.contPts;
    let puntuacionDB = 0;
    let supero_puntuacion = false;
    //realizar la subida
    if (req.session.loggedin) {
        const nombre_juego = 'trivia';
        //inserta si no esta
        connection.query('INSERT INTO Usuario_Juego SET ?', { Usuario_nombre_usuario: req.session.name, Juego_nombre_juego: nombre_juego, puntuacion: contPts }, async(error, results) => {
            if (error) {
				console.log("El El error de algo");
                console.log(error);				
                connection.query('SELECT puntuacion from Usuario_Juego WHERE Usuario_nombre_usuario=? and Juego_nombre_juego = ?', [req.session.name, nombre_juego], async(error, results, fields) => {
                    if (results.length != 0) {
                        puntuacionDB = results[0].puntuacion;
                        // console.log('punt db: ' + puntuacionDB);
                        if (contPts > puntuacionDB) {
                            //actualiza si esta
                            connection.query('UPDATE Usuario_Juego SET puntuacion= ? WHERE Usuario_nombre_usuario= ? and Juego_nombre_juego = ?', [contPts, req.session.name, nombre_juego], async(error, results) => {
                                if (error) {
                                    console.log('error en update ' + error);
                                } else {
                                    supero_puntuacion = true;
                                    console.log('dato actualizado');
                                }
                            })
                        } else {
                            console.log('puntuacion actual menor a la db')
                        }
                    }
                });
            } else {
                console.log('dato insertado')
            }
        });
    }
    res.json({
        status: 'success',
        supero_puntuacion: supero_puntuacion,
        pointsAnt: puntuacionDB,
        pointsNew: contPts
    });
    res.end();

});

app.listen(3000, (req, res) => {
    console.log('SERVER RUNNING IN http://localhost:3000');
});