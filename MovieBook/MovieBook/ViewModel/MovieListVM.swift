//
//  MovieListVM.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import Foundation
import SwiftUI

class MovieListVM : ObservableObject {
    @Published var movies = [MovieVM]()
    
    let downloader = Downloader()
    
    func SearchingMovies(movieName : String) {
        downloader.downloadMovies(search: movieName) { sonuc in
            switch sonuc {
            case.failure(let hata):
                print(hata)
            case .success(let movieArray):
                DispatchQueue.main.async {
                    self.movies = movieArray.map(MovieVM.init)
                }

                
            }
        }
    }
}

struct MovieVM {
    
    let movie : Movie
    
    var title : String {
        movie.title
    }
    
    var poster : String {
        movie.poster
    }
    
    var year : String {
        movie.year
    }
    
    var imdbID : String {
        movie.imdbId
    }
    
    var type : String {
        movie.type
    }
    
}

    
    
