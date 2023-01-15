//
//  DetailViewModel.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 15.01.2023.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old")
    }
    
    
}
