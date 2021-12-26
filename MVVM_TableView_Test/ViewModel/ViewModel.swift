//
//  ViewModel.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation


class ViewModel: TableViewViewModelType {
    
   private  var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "John", secondName: "Wick", age: 37),
        Profile(name: "Max", secondName: "Rakotansky", age: 32),
        Profile(name: "Uncle", secondName: "Bogdan", age: 69)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {return nil}
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
