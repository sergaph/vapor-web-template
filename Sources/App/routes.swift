import Vapor

struct WelcomeContext: Encodable {
    var title: String
    var numbers: [Int]
}

func routes(_ app: Application) throws {
//    app.get { req async in
//        "It works!"
//    }

    app.get { req async throws -> View in
//        return try await req.view.render("home", ["name": "masle.net"])
        return try await req.view.render("index", ["title": "masle.net"])
    }
    
    
    app.get("hello") { req async throws -> View in
//        "Hello, world!"
//        return try await req.view.render("hello", ["name": "Leaf"])
        return try await req.view.render("hello", WelcomeContext(title: "Hello!", numbers: [42, 9001]))
    }
}
