//  Created by Ivan Almada on 27/03/21.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(0..<6) { index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(Color.pink)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool

    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text("😈")
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
