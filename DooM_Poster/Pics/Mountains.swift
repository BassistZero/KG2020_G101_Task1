//
//  Mountains.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct Mountains: View {
    let gradientROG = Gradient(colors: [.red, .orange, .gray])
    let gradientGOR = Gradient(colors: [.gray, .orange, .red])
    
    var body: some View {
        ZStack {

            VStack {
                HStack {
                    Triangle()
                        .fill(LinearGradient(gradient: gradientGOR, startPoint: .bottom, endPoint: .topTrailing))
                    VStack {
                        Triangle()
                            .opacity(0)
                        Triangle()
                            .fill(LinearGradient(gradient: gradientGOR, startPoint: .bottom, endPoint: .topTrailing))
                    }
                    Triangle()
                        .fill(LinearGradient(gradient: gradientGOR, startPoint: .bottomLeading, endPoint: .bottomTrailing))
                }
                Rectangle()
                    .fill(Color.gray)
            }
            HStack {
                LeftTriangle()
                    .fill(LinearGradient(gradient: gradientROG, startPoint: .leading, endPoint: .trailing))
                    .frame(width: 300, height: 300)
                
                Spacer()
                
                RightTriangle()
                    .fill(LinearGradient(gradient: gradientGOR, startPoint: .leading, endPoint: .trailing))
                    .frame(width: 300, height: 300)
            }
            VStack {
                Triangle()
                    .opacity(0)
                Triangle()
                    .fill(LinearGradient(gradient: gradientGOR, startPoint: .bottom, endPoint: .topLeading))
            }
        }
    }
}

struct Mountains_Previews : PreviewProvider {
    static var previews: some View {
        return Mountains().previewDevice("iPad Pro (9.7-inch)").previewLayout(.device)
    }
}
