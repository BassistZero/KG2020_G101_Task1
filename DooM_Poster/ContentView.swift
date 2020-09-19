//
//  ContentView.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        ZStack {
            BackgroundGradient()
                .edgesIgnoringSafeArea(.all)
            Mountains()
            DooMText()
            CentralDoomguy()
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        return ContentView().previewDevice("iPad Pro (9.7-inch)").previewLayout(.device)
    }
}
