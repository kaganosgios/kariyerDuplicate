import SwiftUI

struct birinci: View {
    @State private var arama: String = ""

    @State private var currentIndex: Int = 0

    let images = ["image1", "image2", "image3"]
    
    let items = [
            JobItem(imageName: "resim1", title: "IOS Dev Intern", company: "Kariyer.net", location: "İstanbul", date: "Bugün"),
            JobItem(imageName: "resim1", title: "IOS Developer", company: "Kariyer.net", location: "Ankara", date: "Bugün"),
            JobItem(imageName: "resim1", title: "IOS", company: "Kariyer.net", location: "İzmir", date: "Bugün"),
            JobItem(imageName: "resim1", title: "SwiftUI", company: "Kariyer.net", location: "Konya", date: "Bugün")
        ]

    var body: some View {
        
        ScrollView{
        
        VStack {
            HStack {
                Image("kariyernet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 40)
                    .padding(.leading, 19)
                Text("25")
                    .font(.largeTitle)
                    .bold()
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
                
                Text(".yıl")
                    .font(.caption2)
                    .padding(.top)
                    .foregroundColor(.purple)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                TextField(" Pozisyon veya şirket ara", text: $arama)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.vertical, 8)
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .frame(width: 38, height: 38)
                    .background(Color(hue: 0.787, saturation: 0.996, brightness: 0.754))
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .padding(.horizontal)
            
            VStack {
                HStack {
                    Image(systemName: "text.page.badge.magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading)
                    
                    Text("Son Aramalar")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 5)
                
                HStack {
                    Text(" IOS Developer ")
                        .font(.caption)
                        .background(Color.gray.opacity(0.4).cornerRadius(10))
                        .padding(.leading)
                    
                    Text(" SwiftUI ")
                        .font(.caption)
                        .background(Color.gray.opacity(0.4).cornerRadius(10))
                        .padding(.leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 5)
            }
            
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    
                    HStack(spacing: 0) {
                        ForEach(images, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                            .frame(width: geometry.size.width)                         }
                    }
                    .frame(width: geometry.size.width * CGFloat(images.count), alignment: .leading)
                    .offset(x: -CGFloat(currentIndex) * geometry.size.width) // Animasyonlu kaydırma
                    .animation(.easeInOut(duration: 2), value: currentIndex) // Yumuşak geçiş
                    .onAppear {
                        startImageSlidingAnimation()
                    }
                }
            }
            .frame(height: 200)
            
            gricizgi()
            
            HStack{
                Text("Seni Bekleyen İlanlar")
                    .bold()
                
                Spacer()}
            .padding()
            
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(items) { item in
                        VStack{
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 3)
                                        .stroke(Color.gray, lineWidth: 1))
                            
                            Text(item.title)
                                .font(.headline)
                            
                            
                            Text(item.company).font(.subheadline).padding(.top,5).padding(.trailing,40)
                            
                            
                            Text(item.location).font(.caption).padding(.top,5).foregroundColor(.gray).padding(.trailing,70)
                            
                            
                            Text(item.date).font(.caption2).padding(.leading,80).foregroundColor(.gray)
                            
                            
                        }.padding()
                            .frame(width: 150, height: 200) // Her kartın boyutu
                            .background(Color.white) // Gri arka plan
                            .cornerRadius(8) // Köşelerin yuvarlatılması
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1) // Kart çerçevesi
                            )
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                        
                        
                    }
                    
                }
                
            }
            gricizgi()
            VStack{
                HStack{
                    Text("     Kariyerini Planla")
                        .bold()
                    
                    Spacer()}
                .padding(.top,4)
                
                VStack{
                    Text(" Kariyerini planlamaya hazır mısın? Sana özel CV  örneklerini , yüzlerce pozisyonun iş tanımını ve maaş bilgisine kadar tüm merak ettiklerini öğren!")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.subheadline).foregroundColor(.gray.opacity(0.9))
                    
                    Spacer()}
                .padding(.top,4).padding(.bottom,10)
                
                
                HStack(spacing: 65) {
                            // İlk Kart
                            VStack {
                                ZStack() {
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color.white)
                                        .frame(width: 65, height: 65)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 16)
                                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                        )
                           
                                  Image(systemName: "person.crop.badge.magnifyingglass")
                                      .resizable()
                                      .scaledToFit()
                                      .frame(width: 40, height: 40)
                                      .foregroundColor(.purple)
                                }.overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.purple, lineWidth: 2)
                                    
                                )
                                
                           
                                
                                Text("Pozisyonlar")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }

                            
                            VStack {
                                ZStack() {
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color.white)
                                        .frame(width: 65, height: 65)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 16)
                                                .stroke(Color.green, lineWidth: 2)
                                        )
                                    
                                
                                                      
                                                      Image(systemName: "chart.line.uptrend.xyaxis")
                                                          .resizable()
                                                          .scaledToFit()
                                                          .frame(width: 40, height: 40)
                                                          .foregroundColor(.green)
                                                          
                                }
                                
                               
                                
                                Text("Maaşlar")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }

                    VStack(spacing: 8) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 16)
                                            .fill(Color.white)
                                            .frame(width: 65, height: 65)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 16)
                                                    .stroke(Color.blue, lineWidth: 2)
                                            )
                                        
                                        Image(systemName: "doc.text")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.blue)
                                            
                                    }
                                    
                                    Text("CV Örnekleri")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                        }
                        .padding()
                
                gricizgi()
                
                VStack{
                    HStack{
                        Image("resim1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray))
                        VStack(alignment: .leading){
                            Text("   IOS Developer Intern - İstanbul TR   ")
                                .font(.headline)
                            
                            Text("   Kariyer.net")
                                .font(.subheadline)
                            
                            Text("    İstanbul(Tümü) ⚇ Uzaktan ")
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                                    
                        }
                        
                        
                    }
                    HStack{
                        HStack(){
                            Text("Yarı Zamanlı")
                                
                                .font(.caption2)
                            
                            Spacer()
                            
                            
                            
                        }
                        
                        Text(" Yeni ")
                            .font(.caption)
                            .foregroundColor(.green)
                            .padding(.bottom)
                        
                    }
                    
                }.padding()
                
                HStack{
                    Text(" ")
                        .frame(maxWidth: .infinity , maxHeight: 2)
                        .foregroundColor(.gray)
                        .background(Color.gray.opacity(0.7))
                }
                
                VStack{
                    HStack{
                        Image("linkedin2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray))
                        VStack(alignment: .leading){
                            Text("   IOS Developer Intern - İstanbul TR   ")
                                .font(.headline)
                            
                            Text("   Linkedin")
                                .font(.subheadline)
                            
                            Text("    Ankara(Tümü) ⚇ Uzaktan ")
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                                    
                        }
                        
                        
                    }
                    HStack{
                        HStack(){
                            Text("Yarı Zamanlı")
                                
                                .font(.caption2)
                            
                            Spacer()
                            
                            
                            
                        }
                        
                        Text(" Yeni ")
                            .font(.caption)
                            .foregroundColor(.green)
                            .padding(.bottom)
                        
                    }
                    
                }.padding()
                
                HStack{
                    Text(" ")
                        .frame(maxWidth: .infinity , maxHeight: 2)
                        .foregroundColor(.gray)
                        .background(Color.gray.opacity(0.7))
                }
                
                
                VStack{
                    HStack{
                        Image("amblem")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray))
                        VStack(alignment: .leading){
                            Text("   IOS Developer Intern - İstanbul TR   ")
                                .font(.headline)
                            
                            Text("   Mine")
                                .font(.subheadline)
                            
                            Text("    Konya(Tümü) ⚇ Uzaktan ")
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                                    
                        }
                        
                        
                    }
                    HStack{
                        HStack(){
                            Text("Tam Zamanlı")
                                
                                .font(.caption2)
                            
                            Spacer()
                            
                            
                            
                        }
                        
                        Text(" Yeni ")
                            .font(.caption)
                            .foregroundColor(.green)
                            .padding(.bottom)
                        
                    }
                    
                }.padding()
                
                HStack{
                    Text(" ")
                        .frame(maxWidth: .infinity , maxHeight: 2)
                        .foregroundColor(.gray)
                        .background(Color.gray.opacity(0.7))
                }
                
                
                
            }
            
            Spacer()
        }
    }
    }

    func startImageSlidingAnimation() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            currentIndex = (currentIndex + 1) % images.count
        }
    }
    
    func gricizgi() -> some View {
        Rectangle()
            .fill(Color.gray.opacity(0.2)) 
            .frame(maxWidth: .infinity, maxHeight: 6)
    }
}

struct JobItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let company: String
    let location: String
    let date: String
}
#Preview {
    birinci()
}

    
