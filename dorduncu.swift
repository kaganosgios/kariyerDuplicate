//
//  birinci.swift
//  kariyer
//
//  Created by KağanKAPLAN on 17.12.2024.
//

import SwiftUI

struct dorduncu: View {
    @EnvironmentObject var userState: UserState

    var body: some View {
        
        Group {
            if userState.isLoggedIn {
                yenidorduncu()
            } else {
                digerdorduncu()
            }
        }}
}


#Preview {
    dorduncu()

}
