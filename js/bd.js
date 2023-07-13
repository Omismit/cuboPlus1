const botonRegister = document.getElementById("register")
const botonLogin = document.getElementById("btn-acceder")
const mysql = require('mysql')


// Configura los parámetros de conexión a la base de datos
 const connection = mysql.createConnection({
  host: '192.168.0.107',
  user: 'user2',
  password: 'Zm6oFX5Qt6bxqd3',
  database: 'easy_db'
});

// Establece la conexión
connection.connect(function(err) {
  if (err) {
    console.error('Error al conectar a la base de datos:', err);
    return;
  }
  console.log('Conexión exitosa a la base de datos MySQL');

  // Realiza consultas y operaciones en la base de datos aquí
});

connection.query('select * from users',(err,rows)=>{
  if(err) throw err
  console.log('los datos de la tabla')
  console.log(rows)
})

function insertUsers() {
  let nombre = document.getElementById("firstName").value;
  let apellido = document.getElementById("lastName").value;
  let correo = document.getElementById("email").value;
  let password = document.getElementById("pass").value;

  connection.query(`CALL insert_user('${nombre}','${apellido}','${correo}','${password}',@valido)`, (err, rows) => {
    if (err) throw err;
    console.log(rows);
  });
}

botonRegister.addEventListener('click', insertUsers);

function login(){
  let user =  document.getElementById("user").value
  let password = document.getElementById("password").value

  connection.query(`select * from users where email = ${user} and password = sha1(${password})`,(err,rows)=>{
    if(err) throw err
    console.log(rows)
  })
}


connection.end();





