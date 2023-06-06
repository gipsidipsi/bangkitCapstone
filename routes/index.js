import express from "express";
import { getUsers, Register, Login } from "../controllers/Users.js";
import { verifyToken } from "../middleware/VerifyToken.js";
import { refreshToken } from "../controllers/RefreshToken.js";
import { getRestAreas } from '../controllers/RestAreas.js' //new wrok
import { getTolls } from "../controllers/Tolls.js";

const router = express.Router();

router.get('/users', verifyToken, getUsers);
router.post('/users', Register);
router.post('/login', Login);
router.get('/token', refreshToken);
router.get("/rest_areas", getRestAreas); // get all rest areas(new work)
router.get("/tolls/", getTolls);

export default router;