//
//  ImageDownloader.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import Foundation
import SwiftUI

class ImageDownloader : ObservableObject {
    @Published var downloadedImage : Data?
    
    func downloadImage(url : String) {
        
        guard let imageUrl = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            guard let data = data , error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = data
            }
            
        }.resume()
        
        
        
    }
    
}

    
    
