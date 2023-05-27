import { Sequelize } from "sequelize";

const db = new Sequelize('app_db', 'db_user', 'db_user_pass', {
    host: "127.0.0.1",
    port: "6033",
    dialect: "mysql"
});

export default db;