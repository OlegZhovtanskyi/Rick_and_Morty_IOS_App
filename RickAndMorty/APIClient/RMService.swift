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
    
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
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
        guard let urlRequest = self.request(from: request) else {
            competion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) {data, _, error in
            guard let data = data, error == nil else {
                competion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            //Decode responce
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                competion(.success(result))
                
            } catch {
                competion(.failure(error))
            }
        }
        task.resume()
    }
    
    
    //MARK: - Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
            
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
