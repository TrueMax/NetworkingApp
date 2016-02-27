//
//  SearchViewController.swift
//  StoreSearch
//
//  Created by Maxim on 27.02.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK - Properties 
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension SearchViewController: UISearchBarDelegate {

}
