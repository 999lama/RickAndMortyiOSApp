//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Lama Albadri on 31/03/2023.
//

import UIKit

/// Controller to show and search for Character
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Characters"
        self.view.backgroundColor = .systemBackground
   
        let request = RMRequest(endPoint: RMEndPoint.character,
       queryParamters: [URLQueryItem(name: "name", value: "rick"),
                       URLQueryItem(name: "status", value: "alive")])
        print(request.url ?? "")
        
    
    }
    

 

}
