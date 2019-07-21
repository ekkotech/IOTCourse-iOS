//
//  UserDefaultsInjectable.swift
//  IOTCourse5
//
//  Created by Andrew Coad on 09/06/2019.
//  Copyright © 2019 Andrew Coad. All rights reserved.
//

import Foundation
import CoreBluetooth

protocol UserDefaultsInjectable {
    func object(forKey defaultName: String) -> Any?
    func set(_ value: Any?, forKey defaultName: String)
}

extension UserDefaults: UserDefaultsInjectable {
    
}

class UserDefaultsFakeReturnsNil: UserDefaultsInjectable {
    func object(forKey defaultName: String) -> Any? {
        return nil
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        //
    }
}

class UserDefaultsFakeReturnsInvalid: UserDefaultsInjectable {
    func object(forKey defaultName: String) -> Any? {
        struct Invalid: Codable {
            var uuid1: UUID
            var uuid2: UUID
        }
        // Two random UUIDs - uuid2 is not an encoded CBUUID...
        let invalid:Invalid = Invalid(uuid1: UUID(), uuid2: UUID())
        return try? (JSONEncoder().encode(invalid))
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        //
    }
}

class UserDefaultsFakeReturnsValid: UserDefaultsInjectable {
    // Returns a valid but meaningless response
    func object(forKey defaultName: String) -> Any? {
        let lap = LastAttachedPeripheral(peripheral: UUID(),
                                         serviceData: CBUUID(string: "0000180A-0000-1000-8000-00805F9B34FB").data)
        return try? (JSONEncoder().encode(lap))
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        //
    }
}

