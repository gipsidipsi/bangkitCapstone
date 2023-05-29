import { Sequelize } from "sequelize";

const db = new Sequelize('app_db', ' Admin-kendi', 'Z@D7LQD6hF/pKD1;', {
    host: "34.101.168.66",
    port: "3066",
    dialect: "mysql"
});

export default db;