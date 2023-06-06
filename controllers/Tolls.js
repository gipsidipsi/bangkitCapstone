import Tolls from "../models/TollModel.js";

export const getTolls = async (req, res) => {
    try {
        const restAreas = await Tolls.findAll();
        res.json(restAreas);
    } catch (error) {
        console.log(error);
    }
};
