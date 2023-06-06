import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

//define rest area table
export const RestArea = db.define('RestAreas', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
    },
    rest_area_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    rest_area_location: {
        type: DataTypes.STRING,
        allowNull: false
    },
}, { timestamps: false });

//define image table
export const Image = db.define('Images', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
    },
    img: {
        type: DataTypes.STRING,
        allowNull: false
    },
}, { timestamps: false });

//define rest_area_images table
export const RestAreaImage = db.define('RestAreaImages', {
    rest_area_id: {
        type: DataTypes.INTEGER,
        references: {
            model: RestArea,
            key: 'id'
        }
    },
    image_id: {
        type: DataTypes.INTEGER,
        references: {
            model: Image,
            key: 'id'
        }
    }
}, { timestamps: false });


//Image.belongsToMany(RestArea, { through: 'RestAreaImages' });
RestArea.belongsToMany(Image, { through: 'RestAreaImages', otherKey: 'image_id', foreignKey: 'rest_area_id' });

export default RestArea;