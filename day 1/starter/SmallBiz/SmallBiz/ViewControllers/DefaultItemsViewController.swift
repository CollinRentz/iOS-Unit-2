//
//  DefaultItemsViewController.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/18/22.
//

import UIKit

class DefaultItemsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(
        top: 30.0,
        left: 20.0,
        bottom: 30.0,
        right: 20.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Default Items"
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
    
    }
    

    // MARK: - Navigation


}

extension DefaultItemsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        EmployeeController.shared.defaultItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defaultItemCell", for: indexPath) as? DefaultItemCollectionViewCell else { return UICollectionViewCell() }
        let item = EmployeeController.shared.defaultItems[indexPath.row]
        cell.defaultItemLabel.text = item
        
        return cell
    }
}

extension DefaultItemsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let availableWidth = view.frame.width - (sectionInsets.left * (itemsPerRow + 1))
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
