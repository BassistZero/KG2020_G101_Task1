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
        Path { path in
            path.move(to: CGPoint(x: 60, y: 310.5))
            path.addLine(to: CGPoint(x: 70, y: 290))
            path.addLine(to: CGPoint(x: 80, y: 292))
            path.addLine(to: CGPoint(x: 90, y: 285))
            path.addLine(to: CGPoint(x: 65, y: 250))
            path.addLine(to: CGPoint(x: 60, y: 245))
            path.addLine(to: CGPoint(x: 62, y: 243))
            path.addLine(to: CGPoint(x: 80, y: 220))
            path.addLine(to: CGPoint(x: 150, y: 205))
            path.addLine(to: CGPoint(x: 150, y: 225))
            path.addLine(to: CGPoint(x: 140, y: 230))
            path.addLine(to: CGPoint(x: 120, y: 238))
            path.addLine(to: CGPoint(x: 100, y: 235))
            path.addLine(to: CGPoint(x: 108, y: 255))
            path.addLine(to: CGPoint(x: 105, y: 270))
            path.addLine(to: CGPoint(x: 110, y: 280))
            path.addLine(to: CGPoint(x: 112, y: 290))
            path.addLine(to: CGPoint(x: 120, y: 310.5))
            
            path.closeSubpath()
        }
            .stroke()
    }
}

struct CentralDoomguy_Previews: PreviewProvider {
    static var previews: some View {
        return CentralDoomguy().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
