import {connection} from  './bd.js';
var fname = document.getElementById('firstname')
var lname = document.getElementById('lastname')
var email = document.getElementById('email')
var pass = document.getElementById('pass')
var pass2 = document.getElementById('pass2')
var register = document.getElementById('register')


function validar(){
  if(fname.value != "" || lname.value != "" || email.value != ""  ){
      alert("You must insert all your info")
  }else{
    connection.query(`insert into user values (${fname},${lname},${email},${pass},${pass2})`);
  }
}

register.addEventListener('click',validar())



