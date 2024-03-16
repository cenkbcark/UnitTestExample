//
//  MockJSONParser.swift
//  UnitTestExampleTests
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

struct MockJSONParser {
    
    static func parse<T: Decodable>(_ jsonString: String, model: T.Type) -> T? {
        guard let data = jsonString.data(using: .utf8) else { return nil }
        
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
