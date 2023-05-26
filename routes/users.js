import { Router } from "express";
import auth from "../middleware/auth.js";
import checkRole from "../middleware/checkRole.js";

const router = Router();

router.get("/details", auth, (req, res) => {
	res.status(200).json({ message: "user authenticated." });
});

export default router;