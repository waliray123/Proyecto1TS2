const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: false }));

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
	res.render('login');
});

app.get('/register', (req, res) => {
	res.render('register');
});

app.get('/calendarioHaab', (req, res) => {
	let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Haab\'';
	connection.query(queryCons, function(err, result) {
        if(err){
            throw err;
        } else {
			//JSON.stringify()
            //obj = {informacion: result};
			obj = JSON.stringify(result);
            res.render('calendarioHaab', {'informacion' : result});                
        }
    });	
});

app.get('/ruedaCalendarica', (req, res) => {
	let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Rueda Calendarica\'';
	connection.query(queryCons, function(err, result) {
        if(err){
            throw err;
        } else {
			obj = JSON.stringify(result);
            res.render('ruedaCalendarica', {'informacion' : result});                
        }
    });	
});

app.get('/calculadora', (req, res) => {
	let queryCons = 'SELECT * FROM Calendario_rueda WHERE nombre_calendario_rueda = \'Rueda Calendarica\'';
	connection.query(queryCons, function(err, result) {
        if(err){
            throw err;
        } else {
			obj = JSON.stringify(result);
            res.render('calculadora', {'informacion' : result});                
        }
    });	
});

app.post('/register', async (req, res) => {
	const user = req.body.user;
	const name = req.body.name;
	const lastname = req.body.lastname;
	const pass = req.body.pass;
	let passwordHash = await bcryptjs.hash(pass, 8);
	connection.query('INSERT INTO Usuario SET ?', { nombre_usuario: user, nombre: name, apellido: lastname, password: passwordHash }, async (error, results) => {
		if (error) {
			console.log(error);
		} else {
			res.render('register', {
				alert: true,
				alertTitle: "Registration",
				alertMessage: "¡Successful Registration!",
				alertIcon: 'success',
				showConfirmButton: false,
				timer: 1500,
				ruta: ''
			});
			//res.redirect('/');         
		}
	});
});

app.post('/auth', async (req, res) => {
	const user = req.body.user;
	const pass = req.body.pass;
	let passwordHash = await bcryptjs.hash(pass, 8);
	if (user && pass) {
		connection.query('SELECT * FROM Usuario WHERE nombre_usuario = ?', [user], async (error, results, fields) => {
			if (results.length == 0 || !(await bcryptjs.compare(pass, results[0].password))) {
				res.render('login', {
					alert: true,
					alertTitle: "Error",
					alertMessage: "USUARIO y/o PASSWORD incorrectas",
					alertIcon: 'error',
					showConfirmButton: true,
					timer: false,
					ruta: 'login'
				});

				//Mensaje simple y poco vistoso
				//res.send('Incorrect Username and/or Password!');				
			} else {
				//creamos una var de session y le asignamos true si INICIO SESSION       
				req.session.loggedin = true;
				req.session.name = results[0].nombre_usuario;
				res.render('login', {
					alert: true,
					alertTitle: "Conexión exitosa",
					alertMessage: "¡LOGIN CORRECTO!",
					alertIcon: 'success',
					showConfirmButton: false,
					timer: 1500,
					ruta: ''
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
			name: req.session.name
		});
	} else {
		res.render('index', {
			login: false,
			name: 'Debe iniciar sesión',
		});
	}
	res.end();
});

app.use(function (req, res, next) {
	if (!req.user)
		res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
	next();
});

app.get('/logout', function (req, res) {
	req.session.destroy(() => {
		res.redirect('/') // siempre se ejecutará después de que se destruya la sesión
	})
});

app.listen(3000, (req, res) => {
	console.log('SERVER RUNNING IN http://localhost:3000');
});