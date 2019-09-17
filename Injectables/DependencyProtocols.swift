//
//  DependencyProtocols.swift
//  IOTCourse
//
//  Created by Andrew Coad on 23/08/2019.
//  Copyright © 2019 Andrew Coad. All rights reserved.
//

import Foundation

protocol DependUserDefaults {
    var userDefaults: UserDefaultsInjectable { get }
}

protocol DependModel {
    var model: ModelInjectable { get }
}

protocol DependBleService {
    var bleService: BleServiceInjectable { get }
}
