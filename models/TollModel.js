import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

//define the toll table
const Tolls = db.define('Tolls', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true
    },
    toll_name: {
        type: DataTypes.STRING
    },
    toll_number: {
        type: DataTypes.STRING
    }
}, { timestamps: false });

export default Tolls;