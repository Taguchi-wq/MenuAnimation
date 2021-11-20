//
//  ViewController.swift
//  MenuAnimation
//
//  Created by cmStudent on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet private weak var menuCollectionView: UICollectionView!
    
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView(menuCollectionView)
    }
    
    
    // MARK: - Methods
    private func setupCollectionView(_ collectionView: UICollectionView) {
        collectionView.dataSource = self
    }
    
    
    // MARK: - @IBAction
    @IBAction private func tappedAnimationButton(_ sender: UIButton) {
        
    }
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
}
