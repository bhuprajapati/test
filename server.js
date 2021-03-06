const express = require('express')
const app = express()
const pool = require('./db');
const async = require('async')

app.use(express.json())

app.get('/user/:id' , async function(req ,res ){
    const { id } = req.params
    const dept = await pool.query( 'SELECT * FROM employee JOIN department ON employee.department_id = department.id WHERE employee.id = $1', [id]);
    res.send({data: dept.rows});
})

app.listen(5000 ,()=>{
    console.log('server is listening to port 5000');
})