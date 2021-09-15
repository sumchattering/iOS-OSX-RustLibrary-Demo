//
//  ContentView.swift
//  Shared
//
//  Created by Sumeru Chatterjee on 9/15/21.
//

import SwiftUI

struct ContentView: View {
    
    let hello = RustLibraryInterface().sayHello(to: "world")
    
    var body: some View {
        Text(hello)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
