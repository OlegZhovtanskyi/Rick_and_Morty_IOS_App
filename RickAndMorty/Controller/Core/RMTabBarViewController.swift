//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 09/07/2023.
//

import UIKit

final class RMTabBarViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    private func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        

        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        let navController1 = UINavigationController(rootViewController: characterVC)
        let navController2 = UINavigationController(rootViewController: locationVC)
        let navController3 = UINavigationController(rootViewController: episodeVC)
        let navController4 = UINavigationController(rootViewController: settingsVC)
        
        navController1.tabBarItem = UITabBarItem(title: "Character",
                                                 image: UIImage(systemName: "person"),
                                                 tag: 1)
        navController2.tabBarItem = UITabBarItem(title: "Locations",
                                                 image: UIImage(systemName: "globe"),
                                                 tag: 1)
        navController3.tabBarItem = UITabBarItem(title: "Episodes",
                                                 image: UIImage(systemName: "tv"),
                                                 tag: 1)
        navController4.tabBarItem = UITabBarItem(title: "Settings",
                                                 image: UIImage(systemName: "gear"),
                                                 tag: 1)
        
        for nav in [navController1, navController2,navController3,navController4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navController1,
                            navController2,
                            navController3,
                            navController4], animated: true)
    }
    
}

