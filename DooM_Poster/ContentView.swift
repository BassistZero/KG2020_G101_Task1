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
            Mountains()
            DooMText()
            //LeftDoomguy()
            //LeftImp()
            //CentralDoomguy()
            //GunsEffect()
            //RightForeImp()
            //RightBackImpsHand()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
