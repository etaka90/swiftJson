//
//  UserModel.swift
//  parseJSON
//
//  Created by Евгений Демченко on 21.02.2021.
//

import Foundation

struct UserModel: Decodable{
    
    var info: Info
    var results: [Results]
}

struct Info: Decodable{
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}

struct Results: Decodable{
    var id: Int
    var name: String
    var image: String
}
