import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

#if DEBUG
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
#endif
