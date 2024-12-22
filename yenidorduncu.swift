//
//  birinci.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

struct yenidorduncu: View {
    @EnvironmentObject var userState: UserState

    var body: some View {
        
       
            ScrollView {
                VStack(spacing: 16) {
                    VStack(spacing: 16) {
                        HStack {
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.purple)
                                .overlay(
                                    Text("2")
                                        .font(.caption2)
                                        .foregroundColor(.white)
                                        .background(Circle().fill(Color.red))
                                        .frame(width: 16, height: 16)
                                        .offset(x: 8, y: -8)
                                )
                            
                            Spacer()
                            
                            Text("Hesabım")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button {
                                userState.isLoggedIn = false
                                
                            } label: {
                                Image(systemName: "gearshape.fill")
                                    .foregroundColor(.purple)
                            }
                        }
                        
                        VStack {
                            ZStack (){
                                Circle()
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 80, height: 80)
                                
                                Image("benno2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height:58 )
                                
                                
                                Image(systemName: "pencil.circle.fill")
                                    .foregroundColor(.purple)
                                    .offset(x: 28, y: 28)
                            }.padding(.trailing , 280)
                            
                            Text("Ahad Kağan Kaplan                                                 ")
                                .font(.headline)
                            
                            Text("kagankaplan1925@gmail.com • Doğrula                     ")
                                .font(.subheadline)
                                .foregroundColor(.purple)
                        }
                        .padding(.top, 20)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Hesabını aktif kullanıyorsun! 🤩")
                            .font(.headline)
                        
                        Text("Aktif hesabınla iş ilanlarına başvurmaya hazır ol!")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        HStack{
                            ProgressView(value: 1, total: 1)
                                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                            ProgressView(value: 1, total: 1)
                                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                            ProgressView(value: 1, total: 1)
                                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                            ProgressView(value: 1, total: 1)
                                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                            ProgressView(value: 1, total: 1)
                                .progressViewStyle(LinearProgressViewStyle(tint: .gray))
                            
                            Text("4/5")
                                .font(.caption)
                        }
                        
                        HStack(spacing: 16) {
                            VStack {
                                Image(systemName: "envelope.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                Text("E-posta doğrula")
                                    .font(.headline)
                                Text("Hesabını güvende tutmak için e-postanı doğrulayabilirsin.")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(8)
                            
                            VStack {
                                Image(systemName: "calendar.badge.plus")
                                    .font(.largeTitle)
                                    .foregroundColor(.green)
                                Text("Doğum tarihini ekle")
                                    .font(.headline)
                                Text("Kendinle ilgili daha fazla bilgi ekleyebilirsin. ✏️")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Özgeçmişlerim")
                                .font(.headline)
                            
                            Spacer()
                            
                            Text("Oluştur")
                                .foregroundColor(.purple)
                        }
                        
                        Text("İlanlara başvururken özgeçmişlerin arasından seçim yapabilirsin.")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Text("20.12.2024")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Text("%81 Özgeçmiş Gücü")
                                    .font(.caption)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.yellow.opacity(0.3))
                                    .cornerRadius(8)
                            }
                            
                            Text("Özgeçmişine daha fazla bilgi ekleyerek başvurularda öne çıkabilirsin!")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            HStack{
                                Image(systemName: "calendar")
                                Text(" 23.12.2024 ")
                                    .font(.subheadline)
                                Text("Tarihi Güncelle                               ")
                                    .font(.subheadline)
                                    .foregroundColor(.purple)
                            }.frame(width: 350, height: 25)
                                .background(Color.white)
                            
                            HStack{
                                Image(systemName: "lock")
                                Text(" Tüm Şirketler")
                                    .font(.subheadline)
                                Text("Görünürlüğü Ayarla                              ")
                                    .font(.subheadline)
                                    .foregroundColor(.purple)
                            }.frame(width: 350, height: 25)
                                .background(Color.white)
                            
                            HStack{
                                Image(systemName: "bell")
                                Text(" İş Alarmları ")
                                    .font(.subheadline)
                                Text("İş Alarmı Ekle                                   ")
                                    .font(.subheadline)
                                    .foregroundColor(.purple)
                            }.frame(width: 350, height: 25)
                                .background(Color.white)
                            
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    }
                    .padding(.horizontal)
                }
            }
    }
    
}


#Preview {
    yenidorduncu()

}
