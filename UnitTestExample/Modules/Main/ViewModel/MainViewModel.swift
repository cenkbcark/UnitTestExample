//
//  MainViewModel.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

final class MainViewModel: MainViewModelProtocol {
    var service: ListServiceable
    var reloadData: (() -> Void)?
    
    init(service: ListServiceable) {
        self.service = service
    }
    
    var songs: [MainModel]?
    
    func fetchSongs() {
        service.fetchGames(endPoint: MainEndpoint.music) { (response: Result<MainResponseModel?, Error>) in
            switch response {
            case .success(let result):
                guard let result = result, result.feed.results?.count ?? 0 > 0 else { return }
                self.songs = result.feed.results
                self.reloadData?()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
