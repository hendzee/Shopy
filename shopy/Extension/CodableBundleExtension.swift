//
//  CodableBundleExtension.swift
//  shopy
//
//  Created by Virginia Hendras on 19/09/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T{
        // Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // Create a decoder
        let decoder = JSONDecoder()
        
        // Create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decoded \(file) from bundle.")
        }
        
        return decodedData
    }
}
