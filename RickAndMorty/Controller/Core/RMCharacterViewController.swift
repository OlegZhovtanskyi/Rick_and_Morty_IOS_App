//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 09/07/2023.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.title = "Character"
        
        
        let request = RMRequest(endpoint: .character,
        queryParameters: [URLQueryItem(name: "name", value: "rick"),
                         URLQueryItem(name: "status", value: "alive")])
        print(request.url)

        }

}
