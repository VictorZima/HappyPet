//
//  SplashScreen.swift
//  HappyPet
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct SplashScreen: View {
    let animals = ["hare", "tortoise", "ladybug", "leaf"]
    let delay = [0.1, 0.4, 0.7, 1.0]
    @State private var showAnimation = false
    @State private var animationEnded = false
    
    var body: some View {
        ZStack {
            if animationEnded {
                
                ProductsList()
            }       
            VStack {
                Spacer()
                HStack(spacing: 10) {
                    ForEach(0..<animals.count, id: \.self) { index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                                .frame(width: 70, height: 70)
                            
                            Image(systemName: animals[index])
                                .font(.system(size: 33))
                                .foregroundColor(.green)
                                .foregroundColor(.red)
                        }
                        .opacity(showAnimation ? 1 : 0)
                        .animation(.linear(duration: 1).delay(delay[index]), value: showAnimation)
                        
                    }
                }
                
                BlurView(text: "HAPPY PET", textSize: 38, startTime: 0.41)
                    .padding(.top, 5)
                Spacer()
                
                Button("Tap") {
                    self.showAnimation.toggle()
                }
                .padding(.bottom, 50)
            }
            .opacity(animationEnded ? 0 : 1)
            .animation(.easeOut, value: animationEnded)
            .onAppear {
                self.showAnimation.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    self.animationEnded = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
