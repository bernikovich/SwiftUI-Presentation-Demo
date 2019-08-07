import SwiftUI

struct DetailsView: View {
    var tech: Tech
    
    var body: some View {
        Text("Details")
    }
}

#if DEBUG
struct DetailsViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationView() {
            DetailsView(tech: Tech.mocked[0])
        }
    }
}
#endif
