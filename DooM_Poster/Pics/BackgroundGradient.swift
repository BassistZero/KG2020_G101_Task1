//
//  BackgroundGradient.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct BackgroundGradient: View {
    
    let gradient = Gradient(colors: [.yellow, .orange])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .topTrailing))
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)).opacity(0.5)
        }
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        return BackgroundGradient().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
