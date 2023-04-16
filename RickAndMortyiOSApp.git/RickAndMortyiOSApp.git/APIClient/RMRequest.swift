//
//  RMRequest.swift
//  RickAndMortyiOSApp.git
//
//  Created by Lama Albadri on 31/03/2023.
//

import Foundation

/// Object that represent a signle API Call
final class RMRequest {
    
    /// API constant
    private struct Constant {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// Desired endPoint
    private let endPoint: RMEndPoint
    
    /// Path components for API, If any
    private let pathComponents: [String]
    
    /// Path arguments for API, If any
    private let queryParamters: [URLQueryItem]
    
    
    /// Constructed url for the API request in string formamt
    private var urlString: String {
        var string = Constant.baseUrl
        string += "/"
        string += endPoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)" })
        }
        
        if !queryParamters.isEmpty {
            string += "?"
            let argumentString = queryParamters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"}).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constrcuted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    /// Constrcut Request
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of Path Components
    ///   - queryParamters: Collection of query paramters
    public init(endPoint: RMEndPoint,
                pathComponents: [String] = [],
                queryParamters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParamters = queryParamters
    }
    
}
