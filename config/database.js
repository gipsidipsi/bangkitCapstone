import {Sequelize} from "sequelize";

const db = new Sequelize('app_db','db_user','db_user_pass',{
    host: "localhost",
    port: "6033",
    dialect: "mysql"
});

export default db;