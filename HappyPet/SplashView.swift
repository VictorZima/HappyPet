//
//  SplashView.swift
//  HappyPet
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct SplashView: View {
    @State private var showAnimation = false
    let animals: [String] = ["hare", "tortoise", "ladybug", "leaf"]
    
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 10) {
                ForEach(animals, id: \.self) { animal in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                            .frame(width: 70, height: 70)
                        
                        Image(systemName: animal)
                            .font(.system(size: 33))
                            .foregroundColor(.black)
                    }
                    .opacity(showAnimation ? 1 : 0)
                    .animation(.linear(duration: 1).delay(0.1), value: showAnimation)
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
