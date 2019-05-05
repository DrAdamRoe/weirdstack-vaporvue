import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let wordController = WordController()
    router.get("/", use: wordController.index)
    router.post("word", use: wordController.check)

}
