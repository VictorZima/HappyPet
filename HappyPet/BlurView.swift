//
//  BlurView.swift
//  HappyPet
//
//  Created by VictorZima on 25/07/2022.
//

import SwiftUI

struct BlurView: View {
    let characters: Array<String.Element>
    let baseTime: Double
    let textSize: Double
    @State var blurValue: Double = 10
    @State var opacity: Double = 0
    
    init(text:String, textSize: Double, startTime: Double) {
        characters = Array(text)
        self.textSize = textSize
        baseTime = startTime
    }
    
    var body: some View {
        HStack(spacing: 1){
            ForEach(0..<characters.count, id: \.self) { num in
                Text(String(self.characters[num]))
                    .font(.system(size: textSize))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .blur(radius: blurValue)
                    .opacity(opacity)
                    .animation(.easeInOut.delay( Double(num) * 0.15 ),
                               value: blurValue)
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + baseTime) {
                if blurValue == 0{
                    blurValue = 10
                    opacity = 0.01
                } else {
                    blurValue = 0
                    opacity = 1
                }
            }
        }
    }
}
