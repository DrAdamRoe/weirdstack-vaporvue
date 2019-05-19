import Vapor

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    
    //change default port
    let serverConfiure = NIOServerConfig.default(hostname: "localhost", port: 9001)
    services.register(serverConfiure)

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    // Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    
    //setup CORS: https://docs.vapor.codes/3.0/vapor/middleware/
    let corsConfiguration = CORSMiddleware.Configuration(
        allowedOrigin: .all,
        allowedMethods: [.GET, .POST],
        allowedHeaders: [.accept, .authorization, .contentType, .origin, .xRequestedWith, .userAgent, .accessControlAllowOrigin]
    )
    
    let corsMiddleware = CORSMiddleware(configuration: corsConfiguration)
    middlewares.use(corsMiddleware)
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    services.register(middlewares)
}
