//
//  ContentView.swift
//  Shared
//
//  Created by Sumeru Chatterjee on 9/15/21.
//

import SwiftUI

struct ContentView: View {
    
    let hello1 = RustLibraryObjCWrapper().sayHello("world")
    let hello2 = RustLibrarySwiftInterface().sayHello(to: "world")
    
    var body: some View {
        Text(hello1)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
