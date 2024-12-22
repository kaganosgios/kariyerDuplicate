//
//  ucuncu.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

struct ucuncu: View {
    var body: some View {
        VStack {  // Ana VStack eklendi
            HStack {
                Text("Bildirimler")
                    .bold()
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, maxHeight: 6)
            
            Spacer()
            
            VStack {
                Image(systemName: "bell")
                    .resizable()
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    .frame(width: 85, height: 100)
                    .padding()
                
                Text("Güncel Başvurular")
                    .bold()
                
                Text("Güncel başvuruları görmek için giriş yapmalısın")
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 55)
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
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hue: 0.787, saturation: 0.996, brightness: 0.754), lineWidth: 1)
                )
                .padding(.horizontal)
                
                Text("Kariyer.net'te özgeçmişin yok mu ?")
                    .padding()
                
                Button {
                    
                } label: {
                    Text("Hemen üye ol")
                        .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ucuncu()
}
