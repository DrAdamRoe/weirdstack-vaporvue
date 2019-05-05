import Vapor

/// Controls basic CRUD operations on `Todo`s.
final class WordController {
    /// Returns a list of all `Todo`s.
    func index(_ req: Request) throws -> HTTPResponse {
        
        var httpResponse = HTTPResponse(status: .ok)
        
        let response_body = """
        <form method="post" action="/word">
        word: <input type="text" name="word">
        <input type="submit" value="Submit">
        </form>
        """
        
        httpResponse.body = HTTPBody(string: response_body)
        httpResponse.contentType = .html
        
        return httpResponse
        }
    	
    
    func check(_ req: Request) throws -> Future<HTTPResponse>{
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

