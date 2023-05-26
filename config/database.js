const { Sequelize } = require('sequelize');

//chnage the database_name, username and password later
const sequelize = new Sequelize('database_name', 'username', 'password', {
  host: 'localhost',
  dialect: 'mysql',
});

module.exports = sequelize;A


export default database;