const express = require('express');
const User = require('../models/user')

const authRouter =  express.Router();

// authRouter.get('/user', (req, res)=>{
//     res.json({msg: 'chamok'});
// })


authRouter.post('/api/signup', async (req, res)=>{
  
    // get the data from client 
    // {
    //     'name': name, 'email': email, 'password': password
    // }
    const {name, email, password} = req.body;

   const existingUser = await User.findOne({email});
   if(existingUser){
    return res.status(400).json({msg: 'user with same email already exists!'});
   }

   

   
    // post that data in database
    // return that data to user
})


module.exports= authRouter;