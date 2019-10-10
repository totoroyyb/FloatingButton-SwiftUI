//
//  ContentView.swift
//  FloatingButton-SwiftUI
//
//  Created by Quentin on 2019/8/12.
//  Copyright © 2019 Quentin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var translation = CGSize.zero
    
    var body: some View {
        Circle()
            .offset(x: translation.width, y: translation.height)
            .frame(width: 40, height: 40)
            .gesture(
                DragGesture()
                    .onChanged({ (value) in
                        self.translation = value.translation
                    })
                    .onEnded({ (value) in
                        self.translation = CGSize.zero
                    })
            )
            .animation(.interpolatingSpring(mass: 0.1, stiffness: 45, damping: 45, initialVelocity: 15))
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
