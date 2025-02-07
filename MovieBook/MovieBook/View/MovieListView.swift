//
//  ContentView.swift
//  MovieBook
//
//  Created by Alperen KARACA on 6.02.2025.
//

import SwiftUI

struct MovieListView: View {
    
    @State var searchableMovie = ""
    
    @ObservedObject var movieListVM : MovieListVM
    
    init() {
        self.movieListVM = MovieListVM()
    }
    
    var body: some View {
        NavigationView{
            
            VStack() {
                
                TextField("Search Some Movie!!!", text: $searchableMovie, onCommit: {
                    self.movieListVM.SearchingMovies(movieName: searchableMovie.trimmingCharacters(in: .whitespacesAndNewlines).addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? searchableMovie)
                }).padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                List(movieListVM.movies , id: \.imdbID) { movie in
                    NavigationLink {
                        MovieDetailView(imdbId: movie.imdbID)
                    } label: {
                        HStack() {
                            DownloadedImage(url: movie.poster)
                                .frame(width: UIScreen.main.bounds.width * 0.2 ,height:UIScreen.main.bounds.height * 0.13)
                            VStack(alignment: .leading) {
                                
                                Text(movie.title)
                                    .foregroundStyle(.gray)
                                    .font(.title2)
                                    .bold()
                                HStack() {
                                    Text(movie.year)
                                        .foregroundStyle(.yellow)
                                        .bold()
                                    Text("-")
                                        .foregroundStyle(.yellow)
                                    Text(movie.type)
                                        .foregroundStyle(.yellow)
                                }

                            }
                        }
                        
                    }

                    
                }.navigationTitle(Text("Movie Book"))
            }
        }
    }
}

#Preview {
    MovieListView()
}
