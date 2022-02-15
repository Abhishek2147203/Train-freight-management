const { readFileSync } = require('fs');
var load = () => JSON.parse(readFileSync(Employee.json)) //strigfy//parse
module.exports = { load };