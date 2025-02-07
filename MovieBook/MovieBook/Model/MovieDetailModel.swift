//
//  MovieDetailModel.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import Foundation

struct MovieDetail: Codable {
    
    let title : String
    let year : String
    let runtime : String
    let genre : String
    let director : String
    let writer : String
    let actors : String
    let plot : String
    let language : String
    let awards : String
    let poster : String
    let metascore : String
    let imdbRating : String
    let imdbVotes : String
    let imdbId : String
    
    private enum CodingKeys : String , CodingKey {
        case title = "Title"
        case year = "Year"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case awards = "Awards"
        case poster = "Poster"
        case metascore = "Metascore"
        case imdbRating = "imdbRating"
        case imdbVotes = "imdbVotes"
        case imdbId = "imdbID"
    }
    
}
