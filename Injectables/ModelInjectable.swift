//
//  ModelInjectable.swift
//  IOTCourse
//
//  Created by Andrew Coad on 23/08/2019.
//  Copyright © 2019 Andrew Coad. All rights reserved.
//

import Foundation

protocol ModelInjectable {
    func get(entity: String)
    func set(entity: String, value: Any, response: Bool)
    func setNotify(entity: String, state: Bool)
    func getRssi()
    func rescan()
}

extension Model: ModelInjectable {
    
}

class ModelConsumesAll: ModelInjectable {
    func get(entity: String) {
        // Add as necessary
    }
    
    func set(entity: String, value: Any, response: Bool) {
        // Add as necessary
    }
    
    func setNotify(entity: String, state: Bool) {
        // Add as necessary
    }
    
    func getRssi() {
        // Add as necessary
    }
    
    func rescan() {
        // Add as necessary
    }
}
