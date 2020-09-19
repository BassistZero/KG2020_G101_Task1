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
            VStack {
                HStack {
                    Triangle()
                        .fill(Color.red)
                    Triangle()
                        .fill(Color.blue)
                }
                Triangle()
                    .fill(Color.gray)
            }
            HStack {
                Triangle()
                .fill(Color.yellow)
                Spacer()
            }
        }
    }
}
