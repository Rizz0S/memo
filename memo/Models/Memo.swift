/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual memo.
*/

import SwiftUI
import CoreLocation

struct Memo: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var content: String
    var pinned: Boolean
    var createdAt: Date
    var lastModified: Date
}

//extension Memo {
//    var image: Image {
//        ImageStore.shared.image(name: imageName)
//    }
//}
