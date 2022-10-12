//
//  ContentView.swift
//  AsyncImageSwiftUI1
//
//  Created by daffolapmac-190 on 10/10/22.
//

import SwiftUI

extension Image{
    func imageModifier()-> some View{
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View{
        self
            .imageModifier()
            .frame(maxWidth: 80)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}


struct ContentView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    
    var body: some View {
       // Mark:- 1. BASIC
//        AsyncImage(url: URL(string: imageURL))
        
        // Mark:- 2. SCALE
//        AsyncImage(url: URL(string: imageURL), scale: 2.0)
        
        // Mark:- 3. SCALE
//        AsyncImage(url: URL(string: imageURL)) {
//            image in image.imageModifier()
//
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .iconModifier()
//
//        }
//        .padding(40)
        
        
        // Mark:- 4. PHASE
        
//        AsyncImage(url: URL(string: imageURL)){
//            phase in
//            if let image = phase.image {
//                image.imageModifier()
//            }else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier()
//            }
//            else{
//                Image(systemName: "photo.circle.fill").iconModifier()
//
//            }
//        }.padding(50)
        
        // Mark:- 4. Animation
        
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) {
            phase in
            
            switch phase{
                case .success(let image): image.imageModifier()
//                        .transition(.slide)
//                        .transition(.slide)
                          .transition(.scale)
                    
                case .failure(_): Image(systemName: "ant.circle.fill").iconModifier()
                    
                case .empty: Image(systemName: "photo.circle.fill").iconModifier()
                    
                @unknown default:
                    ProgressView()
            }
            
        }.padding(40)

        
        
        
        
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
