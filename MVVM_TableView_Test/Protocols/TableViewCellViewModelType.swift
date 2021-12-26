//
//  TableViewViewModelType.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String {get}
    var age: String {get}
}
