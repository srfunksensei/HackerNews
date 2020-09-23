//
//  PostData.swift
//  HackerNews
//
//  Created by MB on 23/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
