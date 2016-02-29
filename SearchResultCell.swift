//
//  SearchResultCell.swift
//  StoreSearch
//
//  Created by Maxim on 28.02.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {
    
    //MARK: - Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artWorkImage: UIImageView!
    
    
    //MARK: - Main methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setSelected(true, animated: true)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        let selectedView = UIView(frame: CGRect.zero)
        selectedView.backgroundColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 1)
        selectedBackgroundView = selectedView
    }

}
