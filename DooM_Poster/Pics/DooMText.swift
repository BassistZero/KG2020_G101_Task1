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
        
        ZStack {
            VStack {
                HStack {
                    
                    Text("Do")
                        .font(.custom("AmazDooMLeft", size: 530))
                        .foregroundColor(.black)
                        
                    Text("oM")
                        .font(.custom("AmazDooMRight", size: 530))
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
            
            VStack {
                HStack {
                    
                    Text("Do")
                        .font(.custom("AmazDooMLeft", size: 500))
                        .gradientForeground(colors: [ .blue, .orange])
                        
                    Text("oM")
                        .font(.custom("AmazDooMRight", size: 500))
                        .gradientForeground(colors: [ .blue, .orange])
                }
                
                Spacer()
            }
        }
    }
}

struct DooMText_Previews : PreviewProvider {
    static var previews: some View {
        return DooMText().previewDevice("iPad Pro (9.7-inch)").previewLayout(.device)
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
