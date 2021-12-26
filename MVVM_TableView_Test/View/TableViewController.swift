//
//  TableViewController.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 25.12.21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.nummerOfRows ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell, let viewModel = viewModel else {return UITableViewCell()}
        let profile = viewModel.profiles[indexPath.row]
        tableViewCell.ageLbl.text = "\(profile.age)"
        tableViewCell.fullNameLbl.text = "\(profile.name) \(profile.secondName)"
        return tableViewCell
    }
}