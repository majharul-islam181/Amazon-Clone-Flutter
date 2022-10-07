
//Imports from packages
const express = require('express');
const mongoose = require('mongoose');


// INIT
const PORT = 3000;
const app = express(); 
const DB ="mongodb+srv://majharul:majharulislam713@cluster0.rb9cmrt.mongodb.net/?retryWrites=true&w=majority"

// IMPORTS from outers files
const authRouter = require('./routes/auth');

//middleware
//CLIENT -> middlewate -> SERVER -> CLIENT
app.use(authRouter);

/*
 //for practice
Creating  An API
 app.get('/', (req, res)=>{
     res.json({null: 'Defult'});
 })

 app.get('/hello-world', (req, res)=> {
     res.json({hi: 'hello world'});
 });

 app.get('/about', (req, res)=>{
     res.json({name: 'Md. Majharul Islam ', age: 25, passion: 'creating mobile app'});
     });

  

//GET, PUT, POST, DELETE, UPDATE => CRUD 
   */


//Connections
mongoose.connect(DB)
.then(()=>{
    console.log('Connection Successful');
}).catch(e =>{
    console.log(e);
})

app.listen(PORT,  ()=>{
    console.log('connected at port '+PORT);
});





