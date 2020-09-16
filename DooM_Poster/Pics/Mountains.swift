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
                
                Spacer()
                Spacer()
                
                Triangle()
                    .fill(RadialGradient(gradient: gradientRtoOr, center: .center, startRadius: 100, endRadius: 300))
                Triangle()
                    .fill(LinearGradient(gradient: gradientOrtoR, startPoint: .bottomLeading, endPoint: .topTrailing))
                
                Spacer()
            }
            HStack {
                VStack {
                    Spacer()
                    
                    Triangle()
                        .fill(LinearGradient(gradient: gradientOrtoR, startPoint: .top, endPoint: .bottom))
                }
                
                Spacer()
                
                VStack {
                    Spacer()
                    
                    Triangle()
                        .fill(LinearGradient(gradient: gradientRtoOr, startPoint: .bottom, endPoint: .topLeading))
                }
            }
        }
    }
}
