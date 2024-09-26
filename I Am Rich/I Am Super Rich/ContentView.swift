import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("diamond") // The image you added to Assets.xcassets
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250) // Adjust the size as needed
            
            Text("I Am Rich, I Deserve Success!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
        }
        .background(Color(UIColor.systemBrown))// You can change the background color of text here
    }
}

#Preview {
    ContentView()
}
