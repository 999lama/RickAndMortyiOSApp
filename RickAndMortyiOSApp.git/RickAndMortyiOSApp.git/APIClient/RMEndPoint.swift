//
//  RMEndPoint.swift
//  RickAndMortyiOSApp.git
//
//  Created by Lama Albadri on 31/03/2023.
//

import Foundation
/// represent unique API endPoint
@frozen enum RMEndPoint: String {
    /// EndPoint to get character info
    case character
    /// EndPoint to get location info
    case location
    /// EndPoint to get episode info
    case episode
}
