//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import XCTest
@testable import UnitTestExample

final class UnitTestExampleTests: XCTestCase {
    
    func testFetchSongsList_WhenGivenSuccesfullResponse() {
        let sut = makeSut()
        var counter = 0
        sut.reloadData = { counter += 1}
        sut.fetchSongs()
        
        XCTAssertEqual(sut.songs?.count, 3)
        XCTAssertEqual(counter, 1)
    }

    
    //MARK: - Helpers
    func makeSut() -> MainViewModel {
        let networkable = ServiceManager()
        let serviceManager = MockListServiceable(service: networkable)
        return MainViewModel(service: serviceManager)
    }
}
