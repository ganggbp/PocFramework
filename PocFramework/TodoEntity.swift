//
//  TodoEntity.swift
//  PocFramework
//
//  Created by Burit Boonkorn on 12/6/2567 BE.
//

public struct TodoEntity: Codable {
    public let userId: Int
    public let id: Int
    public let title: String
    public let completed: Bool
}
