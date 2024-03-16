//
//  MainResponseModel.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation

// MARK: - MostPlayedSongResponse
struct MainResponseModel: Codable {
    let feed: Feed
}

// MARK: - Feed
struct Feed: Codable {
    let title: String?
    let id: String?
    let author: Author?
    let links: [Link]?
    let copyright, country: String?
    let icon: String?
    let updated: String?
    let results: [MainModel]?
}

// MARK: - Author
struct Author: Codable {
    let name: String?
    let url: String?
}

// MARK: - Link
struct Link: Codable {
    let `self`: String?
}

// MARK: - Result
struct MainModel: Codable {
    let artistName, id, name, releaseDate: String?
    let kind: String?
    let artistID: String?
    let artistURL: String?
    let contentAdvisoryRating: String?
    let artworkUrl100: String?
    let genres: [Genre]?
    let url: String?
}

// MARK: - Genre
struct Genre: Codable {
    let genreId, name: String?
    let url: String?
}
