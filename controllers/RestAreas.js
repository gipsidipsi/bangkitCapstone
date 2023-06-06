import RestAreas, { Image } from "../models/RestAreaModel.js";

export const getRestAreas = async (req, res) => {
    try {
        const restAreas = await RestAreas.findAll({
            include: [Image]
        });
        res.json(restAreas);
    } catch (error) {
        console.log(error);
    }
};
