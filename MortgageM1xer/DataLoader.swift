//
//  DataLoader.swift
//  parseJSON
//
//  Created by Евгений Демченко on 21.02.2021.
//

import Foundation

public class DataLoader {
    //@Published var userData
    
    @Published var userData = [Results]()

    init(url_json: String){
        load(url_json: url_json)
    }
    func load(url_json: String){
        let curl = url_json
        if let url=URL(string: curl)
          {
        do {
            let data = try Data(contentsOf: url)
            let jsonDecoder = JSONDecoder()
            let userModel = try jsonDecoder.decode(UserModel.self,
                                                      from: data)
            self.userData=userModel.results
            } catch {
                print(error)
            }
        }
    }
}
      
