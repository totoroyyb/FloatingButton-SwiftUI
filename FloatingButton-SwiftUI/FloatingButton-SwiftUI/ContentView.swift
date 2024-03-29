//
//  ContentView.swift
//  FloatingButton-SwiftUI
//
//  Created by Quentin on 2019/8/12.
//  Copyright © 2019 Quentin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                FloatingButton()
            }
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
