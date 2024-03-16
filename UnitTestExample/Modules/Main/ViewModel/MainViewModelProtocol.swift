//
//  MainViewModelProtocol.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

protocol MainViewModelProtocol {
    var service: ListServiceable { get set }
    var songs: [MainModel]? { get set }
    var reloadData: (() -> Void)? { get set }
    
    func fetchSongs()
}
