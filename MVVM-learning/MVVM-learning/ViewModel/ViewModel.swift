//
//  ViewModel.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation



class ViewModel: TableViewModelType {
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Colby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
