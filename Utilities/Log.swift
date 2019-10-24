//
//  Log.swift
//  IOTCourse4
//
//  Created by Andrew Coad on 22/10/2019.
//  Copyright © 2019 Andrew Coad. All rights reserved.
//

import Foundation
import os

private let subsystem = Bundle.main.bundleIdentifier ?? "Unamed"

struct Log {
  static let ble = OSLog(subsystem: subsystem, category: "bluetooth")
}
