//
//  Movie.swift
//  MoviesDomain
//
//  Created by User on 9/10/25.
//

import Foundation

public struct Movie: Identifiable, Hashable, Equatable, Sendable {
    public let id: Int
    public let title: String
    public let overview: String
    public let posterPath: String?
    public let backdropPath: String?
    public let releaseDate: String
    public let voteAverage: Double
    public let voteCount: Int
    public let genreIds: [Int]?
    public let genres: [Genre]?

    public init(
        id: Int,
        title: String,
        overview: String,
        posterPath: String?,
        backdropPath: String?,
        releaseDate: String,
        voteAverage: Double,
        voteCount: Int,
        genreIds: [Int]? = nil,
        genres: [Genre]? = nil
    ) {
        self.id = id
        self.title = title
        self.overview = overview
        self.posterPath = posterPath
        self.backdropPath = backdropPath
        self.releaseDate = releaseDate
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.genreIds = genreIds
        self.genres = genres
    }

    public var releaseYear: String {
        String(releaseDate.prefix(4))
    }
}
