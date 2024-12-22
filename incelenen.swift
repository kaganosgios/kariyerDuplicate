//
//  incelenen.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

struct incelenen: View {
    @State private var isSignUp : Bool = false
    @State private var giris : Bool = false 
    var body: some View {
        Spacer()
        VStack{
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                .frame(width: 95 , height: 100)
                .padding()
            
            Text("Kaydedilen İlanlar ")
                .bold()
            
            Text("Kaydedilen İlanları görmek için giriş yapmalısın")
                .multilineTextAlignment(.center)
                .frame(width: 250 , height: 55)
                .padding()
            
            Button(action: {
                // buton fonks
                giris = true
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
            .fullScreenCover(isPresented: $giris) {
                loginView()
            }
            
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
    }
}

#Preview {
    incelenen()
}
