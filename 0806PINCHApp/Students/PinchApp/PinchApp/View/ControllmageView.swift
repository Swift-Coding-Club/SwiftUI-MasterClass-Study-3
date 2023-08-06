//
//  ControllmageView.swift
//  PinchApp
//
//  Created by 윤경환 on 2023/08/06.
//

import SwiftUI

struct ControllmageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

struct ControllmageView_Previews: PreviewProvider {
    static var previews: some View {
        ControllmageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
