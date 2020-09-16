//
//  DooMText.swift
//  DooM_Poster
//
//  Created by Bassist Zero on 9/9/20.
//  Copyright © 2020 Bassist_Zero. All rights reserved.
//

import SwiftUI

struct DooMText: View {
    
    let gradient = Gradient(colors: [.blue, .orange])
    
    var body: some View {
        VStack {
            
            
            HStack {
                HStack {
                    LinearGradient(gradient: gradient, startPoint: .top, endPoint: .center).mask(StrokeText(text: "Do", width: 10, color: .black)
                        .font(Font.custom("AmazDooMLeft", size: 700)))
                        .padding(.vertical, -100)
                    LinearGradient(gradient: gradient, startPoint: .top, endPoint: .center).mask(StrokeText(text: "oM", width: 10, color: .black)
                    .font(Font.custom("AmazDooMRight", size: 700)))
                    .padding(.vertical, -100)
                }
            }
            
            Spacer()
        }
    }
}

struct DooMText_Previews: PreviewProvider {
    static var previews: some View {
        return DooMText().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
