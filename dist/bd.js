var mysql = require('mysql');
// Configura los parámetros de conexión a la base de datos
var connection = mysql.createConnection({
    host: '192.168.0.107',
    user: 'user2',
    password: 'Zm6oFX5Qt6bxqd3',
    database: 'easy_db'
});
// Establece la conexión
connection.connect(function (err) {
    if (err) {
        console.error('Error al conectar a la base de datos:', err);
        return;
    }
    console.log('Conexión exitosa a la base de datos MySQL');
    // Realiza consultas y operaciones en la base de datos aquí
});
connection.query('select * from users', function (err, rows) {
    if (err)
        throw err;
    console.log('los datos de la tabla');
    console.log(rows);
});
var formulario = document.getElementById("form1");
formulario.addEventListener('submit', function (evt) {
    evt.preventDefault();
    var nombre = document.getElementById("firstName").value;
    var apellido = document.getElementById("lastName").value;
    var correo = document.getElementById("email").value;
    var password = document.getElementById("pass").value;
    connection.query("call insert_user('".concat(nombre, "','").concat(apellido, "','").concat(correo, "','").concat(password, "',@valido)"), function (err, rows) {
        if (err)
            throw err;
        console.log(rows);
    });
});
/*function login(){
  let user =  document.getElementById("user").value
  let password = document.getElementById("password").value

  connection.query(`select * from users where email = ${user} and password = sha1(${password})`,(err,rows)=>{
    if(err) throw err
    console.log(rows)
  })
}*/
connection.end();
