//
//  SettingsView.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 18/12/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    
    // MARK: - BODY
    

    
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fractus", labelImage: "info.circle")
                        )
                        {
                        Divider().padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 40){
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(9)
                                Text("Nice Fruits, ummmmmm Nice Fruits, ummmmmm Nice Fruits, ummmmmm Nice Fruits")
                                    .font(.footnote)

                            }
                        }
                    
                    
                    // MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Applicatoion", labelImage: "apps.iphone")){
                        SettingsRowView(name: "Developer", content: "Aryaveer Bajpai")
                        SettingsRowView(name: "Designer", content: "Aryaveer Bajpai")
                        SettingsRowView(name: "Compatablity", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel:("Aryaveer Bajpai"), linkDestiniation: "a")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the app by below toggle switch. The app will start with the onboarding process.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        
                        )
                    }
                    
                    
                    
                    

                    
                }//:VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//:ScrollView
        }//:NavigationView
        

    }
}

// MARK: - Previews
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
