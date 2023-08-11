//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 15/07/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach {
            self.addSubview($0)
        }
    }
}
