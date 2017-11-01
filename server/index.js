const express = require('express')
const app = express()
const PORT = 3000

app.listen(PORT, function() {
  console.log('SERVER LISTENING IN ON ', PORT)
})


// MAKE SURE TO INITIALIZE SERVER INSIDE THE INDEX.JS FILE OR GET THERE BY DOING './server'