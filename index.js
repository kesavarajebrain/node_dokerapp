const express = require('express');
const app = express();
const PORT = 4000;

app.get('/', (req, res) => {
    res.send('Api is working!');
});

app.get('/user', (req, res) => {
    res.json({
        'Name':"Admin",
        'isActive':true
    });
});

app.listen(PORT, () => {
    console.log('Server is running on ' + PORT);
})