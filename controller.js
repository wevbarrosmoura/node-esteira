import logger from "./logger.js"

const homeController = (req,res) =>{
    try{
        logger.info("welcome Home page")
        res.send("welcome Home Page")
    }catch(error){
        console.log(error)
    }
}

const postController = (req,res) => {
    try{
        logger.info("welcome Test page")
        res.send("Welcome Test page")
    }catch(error){
        console.log(error)
    }
}

const errorController = (req,res) => {
    try{
        logger.error("Page not found")
        res.send("Page not found")
    }catch(error){
        console.log(error)
    }
}


const controllers = { homeController, postController, errorController}

export default controllers