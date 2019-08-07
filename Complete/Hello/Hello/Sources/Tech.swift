import Foundation
import SwiftUI

struct Tech: Hashable, Identifiable {
    let id: String = UUID().uuidString
    let image: String
    let title: String
    let initialRelease: String
    var isBest: Bool = false
    
    static let mocked: [Tech] = {
        return [
            Tech(
                image: "flutter",
                title: "Flutter",
                initialRelease: "May 2011"
            ),
            Tech(
                image: "xamarin",
                title: "Xamarin",
                initialRelease: "May 2011"
            ),
            Tech(
                image: "ionic",
                title: "Ionic",
                initialRelease: "2013"
            ),
            Tech(
                image: "swiftui",
                title: "SwiftUI",
                initialRelease: "June 2019",
                isBest: true
            ),
            Tech(
                image: "react",
                title: "React Native",
                initialRelease: "March 2015"
            )
        ]
    }()
}
