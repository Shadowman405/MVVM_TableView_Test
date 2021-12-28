//
//  DetailViewModel.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    var age: Box<String?> = Box(nil)
    
    var description: String {
        return String(describing: "\(profile.name)  \(profile.secondName)  is \(profile.age) old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
