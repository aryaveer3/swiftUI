//
//  ContentView.swift
//  Pinch
//
//  Created by Unthinkable-mac-0077 on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    // MARK:- PROPERTY
    
    @State private var isAnimating: Bool = false
    
    @State private var imageScale: CGFloat = 1

    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                // Mark: Page Image
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding()
                    .shadow(color: .black.opacity(0.5), radius: 12,x: 2,y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                //MATK:- 1. TAP GESTURE
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1{
                            withAnimation(.spring()){
                                imageScale = 5
                            }
                        }
                        else{
                            withAnimation(.spring()){
                                imageScale = 1
                            }
                        }
                    })
                
            }//: Zstack
            .navigationTitle("Pinch and Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)){
                    isAnimating = true
                }
            }
        }//: NavigationView
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
