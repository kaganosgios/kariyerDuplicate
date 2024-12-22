//
//  HomeView.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    //@State private var tabViewKey = UUID() // TabView için yeniden yükleme anahtarı
    @EnvironmentObject var userState: UserState

    var body: some View {
        TabView(selection: $selectedTab ) {
            birinci().tag(0).tabItem{
            Image(systemName: "text.page.badge.magnifyingglass")
                .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
            Text("İş Ara")
            
        }
            ikinci().tag(1).tabItem {
                Image(systemName: "chart.bar.xaxis")
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                Text("İşlerim")
                    
            }                .id(userState.isLoggedIn)  // ID ekleyelim

            ucuncu().tag(2).tabItem {
                Image(systemName: "bell")
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                Text("Bildirimler")
                    
            }
            dorduncu().tag(3).tabItem {
                Image(systemName: "person")
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                Text("Hesabım")
                    
            }
        }
        .environmentObject(userState)

    }

 
}



#Preview {
    HomeView()
        
}
