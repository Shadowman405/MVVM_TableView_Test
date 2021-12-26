//
//  TableViewModelType.swift
//  MVVM_TableView_Test
//
//  Created by Maxim Mitin on 26.12.21.
//

import Foundation

protocol TableViewModelType {
    var nummerOfRows: Int {get}
    var profiles: [Profile] {get}
}
