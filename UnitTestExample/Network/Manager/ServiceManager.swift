//
//  ServiceManager.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

final class ServiceManager: Networkable {
    
    func fetchData<T>(endPoint: Endpointable, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
        let components = URLComponents(string: endPoint.fullPath)
        
        guard let url = components?.url else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0)))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data received", code: 0)))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(T.self, from: data)
                completion(.success(decodedData))
            }catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
