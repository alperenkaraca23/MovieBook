//
//  Downloader.swift
//  MovieBook
//
//  Created by Alperen KARACA on 6.02.2025.
//

import Foundation

class Downloader {
    
    func downloadMovies(search: String , completion: @escaping (Result<[Movie] , DownloadError>) -> Void) {
        
        guard let url = URL(string: "https://www.omdbapi.com/?s=\(search)&apikey=215d1f90") else {
            return completion(.failure(.invalidURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , error == nil else {
                return completion(.failure(.invalidResponse))
            }
            
            guard let response = try? JSONDecoder().decode(SearchingMovies.self, from: data) else {
                return completion(.failure(.parsingFailed))
            }
            
            completion(.success(response.movies))
            
        }.resume()
        
    }
    
    func downloadMovieDetail(imdbID: String , completion: @escaping (Result<MovieDetail , DownloadError>) -> Void) {
        
        guard let url = URL(string: "https://www.omdbapi.com/?i=\(imdbID)&apikey=215d1f90") else {
            return completion(.failure(.invalidURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , error == nil else {
                return completion(.failure(.invalidResponse))
            }
            
            guard let response = try? JSONDecoder().decode(MovieDetail.self, from: data) else {
                return completion(.failure(.parsingFailed))
            }
            
            completion(.success(response))
        }.resume()
        
    }
    
}

enum DownloadError: Error {
    case invalidURL
    case invalidResponse
    case parsingFailed
}
