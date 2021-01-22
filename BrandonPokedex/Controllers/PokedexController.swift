//
//  PokedexController.swift
//  BrandonPokedex
//
//  Created by Stephen Dowless on 1/21/21.
//

import UIKit

class PokedexController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    func configureCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.register(PokemonCell.self, forCellWithReuseIdentifier: "PokedexCell")
        collectionView.contentInset = .init(top: 0, left: 12, bottom: 0, right: 12)
    }
}

// MARK: - UICollectionViewDataSource

extension PokedexController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokedexCell", for: indexPath) as! PokemonCell
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
}

// MARK: - UICollectionViewDelegate

extension PokedexController {
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension PokedexController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 140)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}


