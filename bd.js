const { error } = require('console');
const mysql = require('../cuboPlus1/node_modules/mysql')

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
connection.end();





