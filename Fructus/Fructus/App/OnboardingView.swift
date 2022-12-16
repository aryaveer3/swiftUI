//
//  OnboardingView.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 16/12/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(0..<5){
                item in FruitCardView()
            }
  

        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}

// MARK: - Previews


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
