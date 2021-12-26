//
//  TableViewCellViewModel.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    private var profile: Profile
    
    var fullName: String {
        return "\(profile.name) \(profile.secondName)"
    }
    
    var age: String {
        return "\(profile.age)"
    }
    
    
    init(profile: Profile) {
        self.profile = profile
    }
}
