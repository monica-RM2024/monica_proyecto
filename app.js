const express = require('express');
const path = require('path');
const colors = require('colors'); // Dependencia para colores en consola

const app = express();

// Configuración de EJS como motor de plantillas
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Archivos estáticos (CSS, imágenes, etc.)
app.use(express.static(path.join(__dirname, 'public')));

// Ruta para redirigir a /login al acceder a la raíz
app.get('/', (req, res) => res.redirect('/login'));

// Ruta para el login
app.get('/login', (req, res) => {
    console.log("Accediendo a la página de login".green); // Mensaje en verde
    res.render('login');
});

// Ruta para el registro
app.get('/register', (req, res) => {
    console.log("Accediendo a la página de registro".yellow); // Mensaje en amarillo
    res.render('register');
});

// Ruta para la bienvenida después de iniciar sesión
app.get('/welcome', (req, res) => {
    const userName = "Usuario"; // Puedes reemplazarlo con el nombre del usuario
    console.log("Accediendo a la página de bienvenida".cyan); // Mensaje en cian
    res.render('welcome', { userName });
});

// Inicialización del servidor
app.listen(3000, () => console.log('Server running on http://localhost:3000'.blue));

