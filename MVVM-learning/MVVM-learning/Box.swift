//
//  Box.swift
//  MVVM-learning
//
//  Created by Damir Aliyev on 16.01.2023.
//

import Foundation


class Box<T> {
    
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
