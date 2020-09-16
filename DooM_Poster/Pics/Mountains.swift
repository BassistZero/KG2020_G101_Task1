//
//  Mountains.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct Mountains: View {
    let gradientRtoOr = Gradient(colors: [.red, .orange])
    let gradientOrtoR = Gradient(colors: [.orange, .red])
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                
                Triangle()
                    .fill(LinearGradient(gradient: gradientRtoOr, startPoint: .leading, endPoint: .bottomTrailing))
                    .frame(width: 500, height: 800)
                
                Spacer()
                Spacer()
                
                Triangle()
                    .fill(RadialGradient(gradient: gradientRtoOr, center: .center, startRadius: 100, endRadius: 300))
                .frame(width: 300, height: 800)
                Triangle()
                    .fill(LinearGradient(gradient: gradientOrtoR, startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(width: 900, height: 800)
                
                Spacer()
            }
            HStack {
                VStack {
                    Spacer()
                    
                    Triangle()
                        .fill(LinearGradient(gradient: gradientOrtoR, startPoint: .top, endPoint: .bottom))
                        .frame(width: 700, height: 800)
                }
                
                Spacer()
                
                VStack {
                    Spacer()
                    
                    Triangle()
                        .fill(LinearGradient(gradient: gradientRtoOr, startPoint: .bottom, endPoint: .topLeading))
                        .frame(width: 800, height: 1200)
                }
            }
        }
    }
}

struct Mountains_Previews: PreviewProvider {
    static var previews: some View {
        return Mountains().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
