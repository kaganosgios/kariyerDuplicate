//
//  signupView.swift
//  kariyer
//
//  Created by KağanKAPLAN on 19.12.2024.
//

import SwiftUI

struct signupView: View {
    @EnvironmentObject var userState: UserState
    @State private var name : String = ""
    @State private var surname : String = ""
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var isCheckboxChecked: Bool = false
    @State private var isOtherCheckboxChecked: Bool = false
    @State private var isLoginButtonDisabled: Bool = true
    //@State private var isLoggedIn : Bool = false
    @State private var errorMessage = ""
    @State private var showHomeView : Bool = false
    @State private var giris : Bool = false
    
    private let validEmail = "kagankaplan1925@gmail.com"
        private let validPassword = "123456"
    
    var body: some View {
        ScrollView{
            
                
                VStack(alignment: .leading, spacing: 5) {
                    VStack(alignment: .trailing, spacing: 5){
                        Text("   Üye Ol ")
                            .font(.headline)
                        
                    }.frame(height: 35)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("     Ad")
                            .font(.caption)
                        
                        TextField("Lütfen adınızı yazın", text: $name)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .padding(.bottom, 5)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                            .padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("     Soyad")
                            .font(.caption)
                        TextField("Lütfen soyadınızı yazın", text: $surname)
                            
                            .autocorrectionDisabled()

                            .autocapitalization(.none)
                            .padding(.bottom, 5)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                            .padding(.horizontal)
                    }
                    VStack(alignment: .leading , spacing: 5){
                        
                        Text("     E-posta")
                            .font(.caption)
                        TextField("Lütfen e-postanızı yazın", text: $email)
                            .keyboardType(.emailAddress)
                            .autocorrectionDisabled()

                            .autocapitalization(.none)
                            .padding(.bottom, 5)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                            .padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading , spacing: 5){
                        
                        Text("     Şifre")
                            .font(.caption)
                        SecureField("Lütfen şifrenizi yazın", text: $password)
                            .padding(.bottom, 5)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.gray),
                                alignment: .bottom
                            )
                            .padding(.horizontal)
                    }
                }
                Spacer().frame(height: 30)
                
                
                HStack {
                    Button(action: {
                        isCheckboxChecked.toggle()
                        updateLoginButtonState()
                    }) {
                        Image(systemName: isCheckboxChecked ? "checkmark.square" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isCheckboxChecked ? Color(hue: 0.787, saturation: 0.996, brightness: 0.754) : .gray)
                    }
                    
                    Text("Verilerimin Açık Rıza Metni'nde belirtilen şekilde işlenmesine onay veriyorum")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }.padding(.horizontal)
                
                HStack {
                    Button(action: {
                        isOtherCheckboxChecked.toggle()
                        updateLoginButtonState()
                    }) {
                        Image(systemName: isOtherCheckboxChecked ? "checkmark.square" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isOtherCheckboxChecked ? Color(hue: 0.787, saturation: 0.996, brightness: 0.754) : .gray)
                    }
                    
                    Text("İletişim bilgilerime e-ileti gönderilmesine             izin veriyorum")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                
                
                
                
                Text("Üye Ol'a tıklamakla **Hizmet Sözleşmemizi** kabul etmiş olursunu. Aydınlatma metnimize buradan ulaşabilirsiniz.")
                    .font(.caption2)
                    .padding()
                
            Button {
                if email == validEmail && password == validPassword {
                    DispatchQueue.main.async { [weak userState] in
                               userState?.signIn()
                               errorMessage = ""
                           }                } else {
                    errorMessage = "Geçersiz e-mail ya da şifre."
                }
            } label: {
                Text("Üye Ol")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 10)
                    .padding()
                    .background(isLoginButtonDisabled ? Color.gray : Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    .cornerRadius(8)
            }
            .disabled(isLoginButtonDisabled)
            .padding(.horizontal)
            
               

                
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                    
                    Text("veya sosyal hesap ile üye ol")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(height: 10)
                        .fixedSize(horizontal: true, vertical: false)
                    
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                }
                .padding(.horizontal)
                
                
                VStack{
                    HStack {
                        Image("face")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Facebook ile Üye Ol")
                            .font(.headline)
                    }
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                    ).padding(.horizontal)
                    
                    HStack {
                        Image("gugle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Google ile Üye Ol     ")
                            .font(.headline)
                    }
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                    ).padding(.horizontal)
                    
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Label("Apple ile Üye Ol        ", systemImage: "apple.logo")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: 35)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black , lineWidth: 1)
                            )
                    }.padding(.horizontal)
                    
                    Text("Kariyer.net'te üyeliğin var mı?")
                        .font(.subheadline)
                    
                    Button {
                        giris = true
                    } label: {
                        Text("Giriş Yap")
                            .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    }
                    .padding()
                    .fullScreenCover(isPresented: $giris) {
                        loginView()
                                }
                    
                    HStack{
                        Text("Üye Olmadan ")
                            .font(.subheadline)
                        
                        Button {
                            showHomeView = true
                            
                        } label: {
                            Text("devam et")
                                .font(.subheadline)
                                .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                        }
                        .fullScreenCover(isPresented: $showHomeView) {
                            HomeView()
                            
                        }

                    }
                    
                    
                    
                }
            
        
    }//scroll view paranrtezi
        
    }
    
    private func updateLoginButtonState() {
            isLoginButtonDisabled = !(isCheckboxChecked && isOtherCheckboxChecked)
        }
}


#Preview {
    signupView()
}
