//
//  SplashView.swift
//  HappyPet
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct SplashView: View {
    @State private var showAnimation = false
    let animals = ["hare", "tortoise", "ladybug", "leaf"]
    let delay = [0.1, 0.4, 0.7, 1.0]
    
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 10) {
                ForEach(0..<animals.count, id:\.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                            .frame(width: 70, height: 70)
                        
                        Image(systemName: animals[index])
                            .font(.system(size: 33))
                            .foregroundColor(.black)
                            .foregroundColor(.red)
                    }
                    .opacity(showAnimation ? 1 : 0)
                    .animation(.linear(duration: 1).delay(delay[index]), value: showAnimation)
                }
            }
            
            Text("HAPPY PET")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            Spacer()
            
            Button("Tap") {
                self.showAnimation.toggle()
            }
            .padding(.bottom, 50)
        }
        .onAppear {
            self.showAnimation.toggle()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
