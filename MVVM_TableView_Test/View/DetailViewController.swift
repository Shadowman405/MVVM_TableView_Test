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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind(listener: { [unowned self] in
            guard let string = $0 else {return}
            self.textLbl.text = string
        })
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "Data biding works fine"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {return}
        self.textLbl.text = viewModel.description
    }

    
    
    private func delay(delay: Double,closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
    
}
