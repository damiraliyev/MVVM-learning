//
//  ViewModel.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation



class ViewModel: TableViewViewModelType {
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Colby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewСellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewСellViewModel(profile: profile)
    }
}

