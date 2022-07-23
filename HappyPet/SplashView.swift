//
//  SplashView.swift
//  HappyPet
//
//  Created by VictorZima on 23/07/2022.
//

import SwiftUI

struct SplashView: View {
    @State private var showAnimation = false
    @State private var progress = 1.0
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: 0, to: progress)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                        .frame(width: 70, height: 70)
                    
                    Image(systemName: "hare")
                        .font(.system(size: 33))
                        .foregroundColor(.black)
                }
                .opacity(showAnimation ? 1 : 0)
                .animation(.linear(duration: 1).delay(0.1), value: showAnimation)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: 0, to: progress)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                        .frame(width: 70, height: 70)
                    
                    Image(systemName: "tortoise")
                        .font(.system(size: 33))
                        .foregroundColor(.black)
                }
                .opacity(showAnimation ? 1 : 0)
                .animation(.linear(duration: 1).delay(0.2), value: showAnimation)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: 0, to: progress)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                        .frame(width: 70, height: 70)
                    
                    Image(systemName: "ladybug")
                        .font(.system(size: 33))
                        .foregroundColor(.black)
                }
                .opacity(showAnimation ? 1 : 0)
                .animation(.linear(duration: 1).delay(0.3), value: showAnimation)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: 0, to: progress)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap.round))
                        .frame(width: 70, height: 70)
                    
                    Image(systemName: "hare")
                        .font(.system(size: 33))
                        .foregroundColor(.black)
                }
                .opacity(showAnimation ? 1 : 0)
                .animation(.linear(duration: 1).delay(0.4), value: showAnimation)
            }
            Text("HAPPY PET")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
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
