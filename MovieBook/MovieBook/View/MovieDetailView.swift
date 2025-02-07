//
//  MovieDetailView.swift
//  MovieBook
//
//  Created by Alperen KARACA on 7.02.2025.
//

import SwiftUI

struct MovieDetailView: View {
    
    var imdbId : String
    
    @ObservedObject var movieDetailVM = MovieDetailVM()
    
    var body: some View {
        VStack {
            DownloadedImage(url: movieDetailVM.movieDetail?.poster ?? "").frame(width: UIScreen.main.bounds.width * 0.4 , height: UIScreen.main.bounds.height * 0.3)
            
            Text(movieDetailVM.movieDetail?.title ?? "")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.yellow)
            
            Text(movieDetailVM.movieDetail?.year ?? "")
                .font(.title)
                .foregroundStyle(.gray)
                .bold()
            
            Text(movieDetailVM.movieDetail?.runtime ?? "")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text(movieDetailVM.movieDetail?.genre ?? "")
                .font(.title2)
                .foregroundStyle(.gray)
            
            Text(movieDetailVM.movieDetail?.language ?? "")
                .foregroundStyle(.gray)
            
            HStack {
                Text("Director : \(movieDetailVM.movieDetail?.director ?? "")")
                    .foregroundStyle(.gray)
                Text("Writer : \(movieDetailVM.movieDetail?.writer ?? "")")
                    .foregroundStyle(.gray)
            }
            
            Text("Actors : \(movieDetailVM.movieDetail?.actors ?? "")")
                .foregroundStyle(.gray).padding()
                
            
            Text(movieDetailVM.movieDetail?.plot ?? "")
                .foregroundStyle(.gray)
                .padding()
        }.onAppear {
            self.movieDetailVM.getMovieDetail(imdbId: imdbId)
        }
        
        Text(movieDetailVM.movieDetail?.awards ?? "")
            .foregroundStyle(.gray)
            
        
        HStack {
            Text("IMDB : \(movieDetailVM.movieDetail?.imdbRating ?? "")")
            Text("-")
            Text("MetaScore : \(movieDetailVM.movieDetail?.metascore ?? "")")
        }.foregroundStyle(.gray)
            .bold()
    }
}

#Preview {
    MovieDetailView(imdbId: "tt0372784")
}
