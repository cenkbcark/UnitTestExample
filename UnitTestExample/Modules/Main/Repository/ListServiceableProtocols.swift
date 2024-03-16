//
//  ListServiceableProtocols.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

protocol ListServiceable {
    var service: Networkable { get set }
    func fetchGames(endPoint: Endpointable, completion: @escaping (Result<MainResponseModel?,Error>) -> Void)
}
