import { Sequelize } from "sequelize";

// const db = new Sequelize('app_db', 'Admin-kendi', 'Z@D7LQD6hF/pKD1;', {
//     host: "34.101.168.66",
//     port: "3306",
//     dialect: "mysql"
// });

const db = new Sequelize('app_db', 'db_user', 'db_user_pass', {
    host: "localhost",
    port: "6033",
    dialect: "mysql"
});

export default db;