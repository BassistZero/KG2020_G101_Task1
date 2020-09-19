//
//  DooMText.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct DooMText: View {
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Do")
                    .font(.custom("AmazDooMLeft", size: 300))
                    .gradientForeground(colors: [ .blue, .orange])
                    
                Text("oM")
                    .font(.custom("AmazDooMRight", size: 300))
                    .gradientForeground(colors: [ .blue, .orange])
            }
            Spacer()
        }
    }
    
}

struct DooMText_Previews : PreviewProvider {
    static var previews: some View {
        return DooMText().previewLayout(.fixed(width: 2048 / 3.0, height: 1536 / 3.0))
    }
}

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: .init(colors: colors),
                                    startPoint: .topLeading,
                                    endPoint: .leading))
            .mask(self)
    }
}
