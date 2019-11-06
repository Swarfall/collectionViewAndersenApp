//
//  MainTableViewCell.swift
//  CollectionAndersenApp
//
//  Created by admin on 04.11.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDelegate & UICollectionViewDataSource>(_ dataSourceDelegate: D, forRow row: Int) {
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        clCollectionView.reloadData()
    }

}
