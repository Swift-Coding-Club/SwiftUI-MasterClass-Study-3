//
//  PageModel.swift
//  PinchApp
//
//  Created by 윤경환 on 2023/08/06.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
