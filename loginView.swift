//
//  loginView.swift
//  kariyer
//
//  Created by KağanKAPLAN on 19.12.2024.
//

import SwiftUI

class UserState: ObservableObject {
    @Published var isLoggedIn = false
    @Published var pickerSelection = "Başvurulan"
    
    func signIn() {
        pickerSelection = "Başvurulan"  // Önce bunu ayarla
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.isLoggedIn = true  // Sonra login state'ini güncelle
        }
    }
}

struct loginView: View {
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
    @State private var showSignUp : Bool = false
    @State private var deneme : Bool = false
    
    private let validEmail = "kagankaplan1925@gmail.com"
        private let validPassword = "123456"
    
    var body: some View {
        ScrollView{
            
                
                VStack(alignment: .leading, spacing: 5) {
                    VStack(alignment: .trailing, spacing: 5){
                        Text("   Giriş Yap")
                            .font(.headline)
                        
                    }.frame(height: 35)

                    VStack(alignment: .leading , spacing: 5){
                        
                        Text("     E-posta")
                            .font(.caption)
                        TextField("Lütfen e-postanızı yazın", text: $email)
                            .keyboardType(.emailAddress)
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
                    HStack(alignment: .lastTextBaseline){
                        Spacer()
                        Text("Şifremi Unuttum     ")
                            .font(.caption)
                            .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                            
                    }
                   
                }
                Spacer().frame(height: 30)
                
           
                
                Button {
                    if email == validEmail && password == validPassword {
                        userState.isLoggedIn = true

                        
                        errorMessage = ""
                    } else {
                        errorMessage = "Geçersiz e-mail ya da şifre."
                    }
                } label: {
                    
                    
                    Text("Giriş Yap")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity , maxHeight: 10)
                        .padding()
                        .background(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                        .cornerRadius(8)
                }
                
                .padding(.horizontal)
                
                
               

                
                HStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                    
                    Text("veya")
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
                .padding()
                
                
                VStack{
                    HStack {
                        Image("face")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20) // Resmin boyutunu kontrol et
                        Text("Facebook ile Giriş Yap")
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
                        .padding(8)
                    
                    HStack {
                        Image("gugle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Google ile Giriş Yap  ")
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
                        .padding(8)
                    
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Label("Apple ile Giriş Yap     ", systemImage: "apple.logo")
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
                        .padding(8)
                    
                    Text("Kariyer.net'te özgeçmişin yok mu?")
                        .font(.subheadline)
                    
                    Button {
                        showSignUp = true
                    } label: {
                        Text("Hemen Üye Ol")
                            .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    }
                    .padding()
                    .fullScreenCover(isPresented: $showSignUp) {
                        signupView()
                                }
                    
                    HStack{
                        Text("Giriş yapmadan ")
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
                    
                    //Color(hue: 0.787, saturation: 0.996, brightness: 0.754)
                    
                }
            
        
    }//scroll view paranrtezi
        
    }
}

#Preview {
    loginView()
        
}
