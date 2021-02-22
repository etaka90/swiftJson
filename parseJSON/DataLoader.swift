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
    
    init(){
        load()
    }
    func load(){
        
        if let url=URL(string: "https://rickandmortyapi.com/api/character/?page=1")
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
      
