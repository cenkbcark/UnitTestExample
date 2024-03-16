//
//  MainEndpoint.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

enum MainEndpoint: Endpointable {
    case music
    
    var baseUrl: String {
        return "https://rss.applemarketingtools.com/api/v2/us/"
    }
    
    var fullPath: String {
        return baseUrl + self.rawValue
    }
    
    var rawValue: String {
        switch self {
        case .music:
            return "music/most-played/50/albums.json"
        }
    }
}
