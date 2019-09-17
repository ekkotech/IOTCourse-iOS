//
//  BleServiceInjectable.swift
//  IOTCourse
//
//  Created by Andrew Coad on 23/08/2019.
//  Copyright © 2019 Andrew Coad. All rights reserved.
//

import Foundation
import CoreBluetooth

protocol BleServiceInjectable {
    func attachPeripheral(service: CBUUID, forceScan: Bool)
    func read(service: CBUUID, charac: CBUUID)
    func write(service: CBUUID, charac: CBUUID, data: Data, response: Bool)
    func setNotify(service: CBUUID, charac: CBUUID, state: Bool)
    func readRssi()
}

extension BleService: BleServiceInjectable {
    
}
