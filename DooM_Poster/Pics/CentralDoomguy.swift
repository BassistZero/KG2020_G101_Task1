//
//  CentralDoomguy.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/10/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct CentralDoomguy: View {
    var body: some View {
        Text(Image("DooM Poster"))
            .ignoresSafeArea(.all)
            .scaledToFill()
            .frame(width: 1000, height: 1010, alignment: .bottom)
    }
}

struct CentralDoomguy_Previews : PreviewProvider {
    static var previews: some View {
        return CentralDoomguy().previewDevice("iPad Pro (9.7-inch)").previewLayout(.device)
    }
}
