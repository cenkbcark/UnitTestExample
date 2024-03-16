//
//  Networkable.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

protocol Networkable {
    func fetchData<T:Decodable>(endPoint: Endpointable, completion: @escaping (Result<T, Error>) -> Void)
}
