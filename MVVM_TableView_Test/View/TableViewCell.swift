//
//  TableViewCell.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 25.12.21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            fullNameLbl.text = viewModel.fullName
            ageLbl.text = viewModel.age
        }
    }

}
