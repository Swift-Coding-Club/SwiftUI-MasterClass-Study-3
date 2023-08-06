//
//  CustomCircleView.swift
//  HikeSwiftUI
//
//  Created by 윤경환 on 2023/08/05.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatGradinet: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                    colors: [
                    .customIndigoMedium,
                    .customSalmonLight
                ],
                startPoint: isAnimatGradinet ? .topLeading : .bottomLeading,
                endPoint: isAnimatGradinet ? .bottomTrailing : .topTrailing
                )
            )
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    isAnimatGradinet.toggle()
                }
            }
            
            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
