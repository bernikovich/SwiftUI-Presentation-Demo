import SwiftUI

struct DetailsView: View {
    var tech: Tech
    @State private var isZoomed: Bool = false
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    Image(tech.image)
                        .resizable()
                        .frame(width: isZoomed ? 200 : 100, height: isZoomed ? 200 : 100)
                        .mask(Circle())
                    Text(tech.title)
                        .font(.largeTitle)
                    Text(tech.initialRelease)
                        .font(.subheadline)
                }
                .animation(.spring())
                Spacer()
            }
            .padding(20)
        }
        .onTapGesture {
            withAnimation {
                self.isZoomed = !self.isZoomed
            }
        }
    }
}

#if DEBUG
struct DetailsViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailsView(tech: Tech.mocked[0])
        }
    }
}
#endif
