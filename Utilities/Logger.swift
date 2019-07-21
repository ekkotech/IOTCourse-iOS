//
//  Logger.swift
//  IOTCourse4
//
//  Created by Andrew Coad on 29/05/2019.
//  Copyright © 2019 IOTCourse4. All rights reserved.
//

import Foundation

public class Logger {
    public class func debug(_ message:String? = nil, function: String = #function, file: String = #file, line: Int = #line) {
        #if DEBUG
        let df = DateFormatter()
        df.dateFormat = "y-MM-dd H:m:ss.SSSS"
        if let message = message {
            print(df.string(from: Date()), " \(file):\(function):\(line): \(message)")
        } else {
            print(df.string(from: Date()), " \(file):\(function):\(line)")
        }
        #endif
    }
    
}
