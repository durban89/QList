//
//  Data.swift
//  QList
//
//  Created by durban.zhang on 2020/8/7.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import Foundation

let landmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle. \n\(filename)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
    
}

final class ImageStore{
    
}
