//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 23/12/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    
    var linkLabel: String? = nil
    var linkDestiniation: String? = nil

    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }
                else if (linkLabel != nil && linkDestiniation != nil)
                {
                    Link(linkLabel!, destination: URL(string: "https://github.com/aryaveer3")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.blue)
                }
                
                else {
                     EmptyView()
                }
            }
        }
        
    }
}
// MARK: - Previews

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: ("Aryaveer Bajpai"))
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(name: "Website", linkLabel:("Aryaveer Bajpai"), linkDestiniation: "a")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
    }
}
