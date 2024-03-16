//
//  MockListService.swift
//  UnitTestExampleTests
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import Foundation
@testable import UnitTestExample

final class MockListServiceable: ListServiceable {
    var service: Networkable
    
    init(service: Networkable) {
        self.service = service
    }
    
    func fetchGames(endPoint: Endpointable, completion: @escaping (Result<MainResponseModel?, Error>) -> Void) {
        guard let object = MockJSONParser.parse(createdJson, model: MainResponseModel.self) else {
            completion(.failure(NSError(domain: "Parsing Error", code: 0)))
            return
        }
        completion(.success(object))
    }
}

fileprivate let createdJson =
"""
{
  "feed": {
    "title": "Top Albums",
    "id": "https://rss.applemarketingtools.com/api/v2/us/music/most-played/50/albums.json",
    "author": {
      "name": "Apple",
      "url": "https://www.apple.com/"
    },
    "links": [
      {
        "self": "https://rss.applemarketingtools.com/api/v2/us/music/most-played/50/albums.json"
      }
    ],
    "copyright": "Copyright © 2024 Apple Inc. All rights reserved.",
    "country": "us",
    "icon": "https://www.apple.com/favicon.ico",
    "updated": "Sat, 16 Mar 2024 11:16:20 +0000",
    "results": [
      {
        "artistName": "Ariana Grande",
        "id": "1735162193",
        "name": "eternal sunshine (slightly deluxe)",
        "releaseDate": "2024-03-08",
        "kind": "albums",
        "artistId": "412778295",
        "artistUrl": "https://music.apple.com/us/artist/ariana-grande/412778295",
        "contentAdvisoryRating": "Explict",
        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/44/ac/49/44ac49c3-fa2f-5241-873e-31fc86ffafda/24UMGIM19152.rgb.jpg/100x100bb.jpg",
        "genres": [
          {
            "genreId": "14",
            "name": "Pop",
            "url": "https://itunes.apple.com/us/genre/id14"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/eternal-sunshine-slightly-deluxe/1735162193"
      },
      {
        "artistName": "Bossman Dlow",
        "id": "1734527099",
        "name": "Mr Beat The Road",
        "releaseDate": "2024-03-15",
        "kind": "albums",
        "artistId": "1474308236",
        "artistUrl": "https://music.apple.com/us/artist/bossman-dlow/1474308236",
        "contentAdvisoryRating": "Explict",
        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/32/5a/72/325a7254-a49b-09fb-1cd0-0637afdbfadc/196871910347.jpg/100x100bb.jpg",
        "genres": [
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          },
          {
            "genreId": "18",
            "name": "Hip-Hop/Rap",
            "url": "https://itunes.apple.com/us/genre/id18"
          }
        ],
        "url": "https://music.apple.com/us/album/mr-beat-the-road/1734527099"
      },
      {
        "artistName": "Kacey Musgraves",
        "id": "1729242096",
        "name": "Deeper Well",
        "releaseDate": "2024-03-15",
        "kind": "albums",
        "artistId": "466044182",
        "artistUrl": "https://music.apple.com/us/artist/kacey-musgraves/466044182",
        "artworkUrl100": "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/18/27/9e/18279e4a-8aaa-caf9-614b-5bded6134648/24UMGIM01566.rgb.jpg/100x100bb.jpg",
        "genres": [
          {
            "genreId": "6",
            "name": "Country",
            "url": "https://itunes.apple.com/us/genre/id6"
          },
          {
            "genreId": "34",
            "name": "Music",
            "url": "https://itunes.apple.com/us/genre/id34"
          }
        ],
        "url": "https://music.apple.com/us/album/deeper-well/1729242096"
      }
    ]
  }
}
"""
