//
//  LeftTriangle.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/19/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct LeftTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}

struct LeftTriangle_Previews: PreviewProvider {
    static var previews: some View {
        LeftTriangle()
    }
}