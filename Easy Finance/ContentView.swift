//
//  ContentView.swift
//  Easy Finance
//
//  Created by Shuhrat Nurov on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
