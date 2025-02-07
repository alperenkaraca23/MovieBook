//
//  MovieDetailVM.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import Foundation
import SwiftUI

class MovieDetailVM: ObservableObject {
    @Published var movieDetail : DetailVM?
    
    let downloader = Downloader()
    
    func getMovieDetail(imdbId : String) {
        downloader.downloadMovieDetail(imdbID: imdbId) { result in
            switch result {
            case .failure(let hata):
                print(hata)
            case .success(let movieDetail):
                DispatchQueue.main.async {
                    self.movieDetail = DetailVM(detail: movieDetail)
                }

            }
        }
    }
    
    
    
}

struct DetailVM {
    
    let detail : MovieDetail
    
    var title : String {
        detail.title
    }
    
    var year : String {
        detail.year
    }
    
    var runtime : String {
        detail.runtime
    }
    
    var genre : String {
        detail.genre
    }
    
    var director : String {
        detail.director
    }
    
    var writer : String {
        detail.writer
    }
    
    var actors : String {
        detail.actors
    }
    
    var plot : String {
        detail.plot
    }
    
    var language : String {
        detail.language
    }
    
    var awards : String {
        detail.awards
    }
    
    var poster : String {
        detail.poster
    }
    
    var metascore : String {
        detail.metascore
    }
    
    var imdbRating : String {
        detail.imdbRating
    }
    
    var imdbVotes : String {
        detail.imdbVotes
    }
    
    var imdbID : String {
        detail.imdbId
    }
}
