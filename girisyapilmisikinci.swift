import SwiftUI

struct girisyapilmisikinci: View {
    @State private var arama: String = ""
    @EnvironmentObject var userState: UserState

    var body: some View {
        VStack {
            // Arama Çubuğu
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                    .padding(.leading, 8)
                
                TextField("Başvurularımda ara", text: $arama)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.vertical, 8)
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .padding(.horizontal)
            .padding(.top, 16) // Arama çubuğu için üst boşluk
            
            // Başvurular Listesi
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("K")
                        .bold()
                        .frame(width: 55, height: 55)
                        .foregroundColor(.gray)
                        .background(Color(hue: 0.772, saturation: 0.301, brightness: 0.999))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray))
                    
                    VStack(alignment: .leading) {
                        Text("IOS Developer Intern - İstanbul TR")
                            .font(.headline)
                        Text("Kariyer.net")
                            .font(.subheadline)
                        Text("1 Başvuru")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Başvuru Tarihi: 30.12.2024")
                            .font(.caption2)
                        
                        HStack {
                            Image(systemName: "exclamationmark.circle")
                                .foregroundColor(.blue)
                            Text("Başvurular devam ediyor")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Text("Başvurun iletildi")
                        .font(.caption)
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
            .padding(.horizontal)

             // Alt boşluk oluştur
        }
       
        HStack{
            Text(" ")
                .frame(maxWidth: .infinity, maxHeight: 900)
                .foregroundColor(.gray)
                .background(Color.gray.opacity(0.2))
        }// Alt kenar boşluğunu yok say
    }
}

#Preview {
    girisyapilmisikinci().environmentObject(UserState())
}
