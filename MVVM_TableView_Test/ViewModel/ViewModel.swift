//
//  ViewModel.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation


class ViewModel: TableViewModelType {
    var nummerOfRows: Int {
        return profiles.count
    }
    
    var profiles = [
        Profile(name: "John", secondName: "Wick", age: 37),
        Profile(name: "Max", secondName: "Rakotansky", age: 32),
        Profile(name: "Uncle", secondName: "Bogdan", age: 69)
    ]
}
