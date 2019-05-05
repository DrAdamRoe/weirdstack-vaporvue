import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let wordController = WordController()
    router.get("/", use: wordController.index)
    
    router.post("word") { req -> Future<HTTPResponse> in
        return try req.content.decode(WordRequest.self).map(to: HTTPResponse.self){
            WordRequest in print(WordRequest.word)

            var httpResponse = HTTPResponse(status: .ok)
            let response_body = "Thanks for the word: " + WordRequest.word
            httpResponse.body = HTTPBody(string: response_body)
            httpResponse.contentType = .html
            
            return httpResponse
        }
    }
}
