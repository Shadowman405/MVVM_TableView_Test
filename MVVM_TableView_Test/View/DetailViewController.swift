//
//  DetailViewController.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLbl: UILabel!
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {return}
        self.textLbl.text = viewModel.description
    }
    
}
