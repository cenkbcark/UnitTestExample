//
//  Endpointable.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

protocol Endpointable {
    var baseUrl: String { get }
    var fullPath: String { get }
}
