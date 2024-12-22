import SwiftUI

struct ikinci: View {
    @EnvironmentObject var userState: UserState
    
    init() {
          // Segmented Picker'ı özelleştir
          let appearance = UISegmentedControl.appearance()
          appearance.selectedSegmentTintColor = UIColor.white // Seçili picker arka planı beyaz
          
          let normalTextAttributes: [NSAttributedString.Key: Any] = [
              .foregroundColor: UIColor.white // Seçili olmayan picker metin rengi
          ]
          appearance.setTitleTextAttributes(normalTextAttributes, for: .normal)
          
          let selectedTextAttributes: [NSAttributedString.Key: Any] = [
              .foregroundColor: UIColor.purple // Seçili picker metin rengi
          ]
          appearance.setTitleTextAttributes(selectedTextAttributes, for: .selected)
          
        appearance.backgroundColor = UIColor.purple// Picker genel arka planı mor
      }

    var body: some View {
        VStack(spacing: 0) {
            // Picker'ı tamamen yukarı al
            VStack {
                let options = ["Başvurulan", "Kaydedilen", "İncelenen"]
                Picker("", selection: $userState.pickerSelection) {
                    ForEach(options, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                .padding(.top, 70) // Üst boşluk
                 // Arka plan rengi
            }
            
             // Altına çizgi ekle
            
            // Picker seçimine göre içerik
            if userState.isLoggedIn {
                girisyapilmisikinci() // Giriş sonrası içerik
            } else {
                LazyVStack {
                    switch userState.pickerSelection {
                    case "Başvurulan": basvurulan()
                    case "Kaydedilen": kaydedilen()
                    case "İncelenen": incelenen()
                    default: EmptyView()
                    }
                }
                .padding(.horizontal)
                .padding(.top, 160)
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.top) // Tüm kenar boşluklarını kaldır
        .background(Color.white) // Genel arka plan
        .id(userState.isLoggedIn) // View yeniden oluşturma
    }
}

#Preview {
    ikinci().environmentObject(UserState())
}
