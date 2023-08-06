//
//  OnboradingView.swift
//  Fructus
//
//  Created by 윤경환 on 2023/08/06.
//

import SwiftUI

struct OnboradingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboradingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboradingView(fruits: fruitsData)
    }
}
