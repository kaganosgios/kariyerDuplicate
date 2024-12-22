//
//  digerdorduncu.swift
//  kariyer
//
//  Created by KağanKAPLAN on 21.12.2024.
//

import SwiftUI

struct digerdorduncu: View {
    @State private var isSignUp : Bool = false

    var body: some View {
        VStack{
            HStack{
                Text("Hesabım")
                    .bold()
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, maxHeight: 6)
            
            Spacer()
            VStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    .frame(width: 105 , height: 100)
                    .padding()
                
                Text("Güncel Başvurular")
                    .bold()
                
                Text("Güncel başvuruları görmek için giriş yapmalısın")
                    .multilineTextAlignment(.center)
                    .frame(width: 250 , height: 55)
                    .padding()
                
                Button(action: {
                    // Buton aksiyonu
                }) {
                    Text("Giriş Yap")
                        .font(.system(size: 20))
                        .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                        .frame(maxWidth: .infinity, maxHeight: 21)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hue: 0.787, saturation: 0.996, brightness: 0.754), lineWidth: 1)
                )
                .padding(.horizontal)
                
                Text("Kariyer.net'te özgeçmişin yok mu ?")
                    .padding()
                
                Button {
                    isSignUp = true
                    
                } label: {
                    Text("Hemen üye ol")
                        .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                }.fullScreenCover(isPresented: $isSignUp) {
                    signupView()
                }
                
                
                
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    digerdorduncu()
}
