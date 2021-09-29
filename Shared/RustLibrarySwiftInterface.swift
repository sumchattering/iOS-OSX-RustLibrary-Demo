//
//  RustLibrarySwiftInterface.swift
//  iOS-OSX-RustLibrary-Demo
//
//  Created by Sumeru Chatterjee on 9/29/21.
//

import Foundation

class RustLibrarySwiftInterface {
    
    public func sayHello(to: String) -> String? {
        guard let result = rust_greeting(to) else {
            return nil
        }
        
        let swift_result = String(cString: result)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
