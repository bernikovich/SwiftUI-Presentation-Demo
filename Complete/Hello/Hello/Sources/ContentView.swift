import SwiftUI

struct ContentView: View {
    private var techCollection: [Tech] = Tech.mocked
    @State private var showBest: Bool = false
    @State private var presentedTech: Tech? = nil
    
    var body: some View {
        List {
            Section {
                Toggle("Show best", isOn: $showBest)
                Button("Open modal", action: { self.presentedTech = self.techCollection[0] })
            }
            ForEach(techCollection) { tech in
                if !self.showBest || tech.isBest {
                    NavigationLink(destination: DetailsView(tech: tech)) {
                        Cell(tech: tech)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Hello, SwiftUI!")
        .sheet(
            item: $presentedTech,
            onDismiss: { self.presentedTech = nil },
            content: { tech in NavigationView { DetailsView(tech: tech) }}
        )
    }
}

struct Cell: View {
    var tech: Tech
    
    var body: some View {
        HStack {
            Image(tech.image)
                .resizable()
                .frame(width: 56, height: 56)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1).foregroundColor(Color.secondary))
            VStack(alignment: .leading) {
                Text(tech.title)
                    .font(.headline)
                Text(tech.initialRelease)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView() {
                ContentView()
            }.previewDevice("iPhone SE")
            NavigationView() {
                ContentView()
            }.previewDevice("iPhone X")
            NavigationView() {
                ContentView()
            }.previewDevice("iPhone SE").environment(\.sizeCategory, .extraExtraExtraLarge).environment(\.colorScheme, .dark)
        }
    }
}
#endif
