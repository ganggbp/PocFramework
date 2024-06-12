//
//  PocFrameWorkError.swift
//  PocFramework
//
//  Created by Burit Boonkorn on 12/6/2567 BE.
//

import Foundation

public enum PocFrameWorkError: Error {
    case invalidURL
    case requestError(_ error: Error)
    case decodingError(_ error: DecodingError.Context)
    
    public var localizedDescription: String {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .requestError(let error):
            return "Request error: \(error.localizedDescription)"
        case .decodingError(let error):
            return "Decoding error: \(error.debugDescription)"
        }
    }
}
