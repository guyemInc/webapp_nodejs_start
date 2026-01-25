/* console.log("Hello world");  */
const express = require('express');
const app = express();
app.use(express.static('public/'));
app.listen(8099, function(){
	console.log("Server running at http://localhost:8099");
});