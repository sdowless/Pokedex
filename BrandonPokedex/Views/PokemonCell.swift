//
//  PokemonCell.swift
//  BrandonPokedex
//
//  Created by Stephen Dowless on 1/21/21.
//

import UIKit

class PokemonCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
