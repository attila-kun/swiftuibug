//
//  ContentView.swift
//  swiftuibug
//
//  Created by Attila Kun on 24/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var foo: String = ""
    
    var body: some View {
        Text("Click (try single and also double click) on this and then change to the textfield quickly and type something there. Repeat this a couple times until you notice that you can't type into the textfield anymore.")
        .focusable()
        .onKeyPress { _ in
            return .handled
        }
        
        TextField("Enter something:", text: $foo)
    }
}

#Preview {
    ContentView()
}
