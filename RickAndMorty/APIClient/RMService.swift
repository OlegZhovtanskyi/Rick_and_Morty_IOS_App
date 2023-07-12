//
//  RMService.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 10/07/2023.
//

import Foundation


/// Primary API service object to get R&M data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init(){}
    
    /// Send R&M API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - competion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        competion: @escaping (Result<T, Error>) -> Void
    ){
        
    }
    
}
