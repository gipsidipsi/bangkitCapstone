import express from "express";
import dotenv from "dotenv";
import db from "./config/Database.js";
import router from "./routes/index.js";
dotenv.config();
const app = express();

try {
    await db.authenticate();
    console.log('Database Connected...');
} catch (error) {
    console.error(error);
}

app.get('/', (req, res) => {
    res.send('Hello World!')
})


app.use(express.json());
app.use(router);

app.listen(80, () => console.log('Server Running on Port 80'));