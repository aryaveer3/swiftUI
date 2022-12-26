//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Unthinkable-mac-0077 on 23/12/22.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName:labelImage)
    }
    }
}

// MARK: - Previews

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fractus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
