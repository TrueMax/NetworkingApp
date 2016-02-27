//
//  SearchViewController.swift
//  StoreSearch
//
//  Created by Maxim on 27.02.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var searchResults = [String]()

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
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchResults = [String]()
        for i in 0...2 {
            searchResults.append(String(format: "Some results %d for '%@'", i, searchBar.text!))
        }
        tableView.reloadData()
    }
    
    // наводим красоту 
    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        return .TopAttached
    }

}

extension SearchViewController: UITableViewDataSource {
    // метод объявляется без override, потому что root view controller = UIViewController, а не TableViewController (где родительские методы надо переопределять)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "SearchResultCell"
        var cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(cellId)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellId)
        }
        cell.textLabel!.text = searchResults[indexPath.row]
        return cell
    }
}

extension SearchViewController: UITableViewDelegate {

}
