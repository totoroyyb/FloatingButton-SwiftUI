//
//  FloatingButton.swift
//  FloatingButton-SwiftUI
//
//  Created by Quentin on 2019/10/9.
//  Copyright © 2019 Quentin. All rights reserved.
//

import SwiftUI

struct FloatingButton: View {
    @State var translation = CGSize.zero
    
    var fillColor = LinearGradient(
        gradient: .init(colors: [FillColor.fillColor1, FillColor.fillColor3]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var overlayImage = Image(systemName: "plus")
    
        
    var body: some View {
        Circle()
            .fill(fillColor)
            .overlay(overlayImage)
            .offset(x: translation.width, y: translation.height)
            .frame(width: 50, height: 50)
            .gesture(
                DragGesture()
                    .onChanged({ (value) in
                        self.translation = value.translation
                    })
                    .onEnded({ (value) in
                        self.translation = CGSize.zero
                    })
            )
            .animation(.interpolatingSpring(stiffness: 40, damping: 40))
            
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}
