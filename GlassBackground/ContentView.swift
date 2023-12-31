//
//  ContentView.swift
//  GlassBackground
//
//  Created by eyh.mac on 20.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            VStack(spacing: 12){
                Image(systemName: "sun.min.fill")
                    .font(.system(size: 55))
                
               Text("29°C")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                
                Text("Istanbul")
                Text("Sun: 10%")
            }
            .padding(.horizontal, 80)
            .padding(.top, 75)
            .padding(.bottom, 55)
            .background{
                TransparentBlur(removeAllFilters: true)
                    .blur(radius: 9, opaque: true)
                    .background(.gray.opacity(0.15))
            }
            .clipShape(.rect(cornerRadius: 10, style: .continuous))
            
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.white.opacity(0.3), lineWidth: 2)
            }
            .background {
                ZStack{
                    Circle()
                        .fill(
                            .linearGradient(colors: [
                            .orange,
                            .green
                        ], startPoint: .top, endPoint: .bottom)
                        )
                        .frame(width: 270, height: 270)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .offset(x: 5, y: -105)
                }
            }
        }
        .padding(.horizontal, 40)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{
            Rectangle()
                .fill(.black)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
