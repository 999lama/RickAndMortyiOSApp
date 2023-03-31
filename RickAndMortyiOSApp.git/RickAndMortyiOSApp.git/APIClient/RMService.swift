//
//  RMService.swift
//  RickAndMortyiOSApp.git
//
//  Created by Lama Albadri on 31/03/2023.
//

import Foundation

/// Our primary API service object to Rick And Morty  data
final class RMService {
    /// Shared signletion instance
    static let shared = RMService()
    
    /// privateized constructor
    private init() {}
    
    
    /// Send Rick And Morty API Call
    /// - Parameters:
    ///   - reuqest: request instance
    ///   - completion: callback with data or error 
    public func excute(_ reuqest: RMRequest, completion: @escaping () -> Void) {
        
    }
    
}
