//
//  AstronautView.swift
//  Moonshot
//
//  Created by Matteo on 08/06/2021.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)
                }
                
                Text(self.astronaut.description)
                    .padding()
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronaut.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
