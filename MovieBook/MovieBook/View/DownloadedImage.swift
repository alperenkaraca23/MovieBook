//
//  DownloadedImage.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import SwiftUI

struct DownloadedImage: View {
    
    let url : String
    @ObservedObject var imageDownloader = ImageDownloader()
    
    init( url : String) {
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageDownloader.downloadedImage {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        } else {
                return Image("placeholder")
                .resizable()
            }
        }
    }


#Preview {
    DownloadedImage(url: "https://m.media-amazon.com/images/M/MV5BODIyMDdhNTgtNDlmOC00MjUxLWE2NDItODA5MTdkNzY3ZTdhXkEyXkFqcGc@._V1_SX300.jpg")
}
