//
//  GradientButtonStyle.swift
//  HikeSwiftUI
//
//  Created by 윤경환 on 2023/08/04.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
      configuration
        .label
        .padding(.vertical)
        .padding(.horizontal, 30)
        .background(
            // Conditional Statement with Nil Coalescing
            // Condition ? A : B
            configuration.isPressed ?
            // A: when User pressed the Button
            LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
            :
            // B: When the Button is not pressed
            LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(40)
    }
}
