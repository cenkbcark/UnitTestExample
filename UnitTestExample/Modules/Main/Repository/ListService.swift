//
//  ListService.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

struct ListService: ListServiceable {
    var service: Networkable
    
    init(service: Networkable) {
        self.service = service
    }
    
    func fetchGames(endPoint: Endpointable, completion: @escaping (Result<MainResponseModel?, Error>) -> Void) {
        service.fetchData(endPoint: endPoint, completion: completion)
    }
}
