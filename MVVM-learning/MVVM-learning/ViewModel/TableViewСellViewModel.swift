//
//  TableViewСellViewModel.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation

class TableViewСellViewModel: TableViewСellViewModelType {
    
    private let profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
