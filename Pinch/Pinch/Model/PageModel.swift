//
//  PageModel.swift
//  Pinch
//
//  Created by Unthinkable-mac-0077 on 15/12/22.
//

import Foundation

struct Page: Identifiable{
    let id: Int
    let imageName: String
}

extension Page{
    var thumbnailName: String{
        return "thumb-" + imageName
    }
}
