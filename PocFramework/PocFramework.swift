//
//  PocFramework.swift
//  PocFramework
//
//  Created by Burit Boonkorn on 12/6/2567 BE.
//

import Foundation

public let Poc = PocFramework.default

public class PocFramework {
    public static let `default` = PocFramework()
    
    private init() {}
}

public extension PocFramework {
    func fetchTodo() async -> Result<TodoEntity, PocFrameWorkError> {
        let randomNumber = Int.random(in: 1...100)
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/\(randomNumber)") else {
            return .failure(.invalidURL)
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let todo = try JSONDecoder().decode(TodoEntity.self, from: data)
            return .success(todo)
        } catch DecodingError.dataCorrupted(let error) {
            return .failure(.decodingError(error))
        } catch let error {
            return .failure(.requestError(error))
        }
    }
}
