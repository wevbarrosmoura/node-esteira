import express from "express";
import controllers from "./controller.js";


const  app = express()

app.get('/',controllers.homeController)
app.get('/teste',controllers.postController)
app.get('*',controllers.errorController)

app.listen(8080,()=>{
    console.log("server is running on port 8080")
})