import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.get("/") { req -> HTTPResponse in

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
    
    
    router.post("word") { req -> Future<HTTPResponse> in
        return try req.content.decode(WordRequest.self).map(to: HTTPResponse.self){ WordRequest in print(WordRequest.word)
            
            var httpResponse = HTTPResponse(status: .ok)
            let response_body = "Thanks for the word: " + WordRequest.word
            httpResponse.body = HTTPBody(string: response_body)
            httpResponse.contentType = .html
            
            return httpResponse
        }
    }
    
    // Example of configuring a controller
    //    let todoController = TodoController()
    //    router.get("todos", use: todoController.index)
    //    router.post("todos", use: todoController.create)
    //    router.delete("todos", Todo.parameter, use: todoController.delete)
}
