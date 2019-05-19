import Vapor

// all of my many routes
public func routes(_ router: Router) throws {

    // a super sophistacted controller
    let wordController = WordController()
    router.get("/", use: wordController.index) //useful for quick development
    router.post("word", use: wordController.check) //process post request from frontend

}
