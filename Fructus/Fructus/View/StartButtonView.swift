//
//  StartButtonView.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 16/12/22.
//

import SwiftUI

struct StartButtonView: View {
    
    
    
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack (spacing: 8){
                
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })//: Button
        .accentColor(Color.white)
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
