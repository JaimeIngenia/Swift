//
//  MainView.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 24/03/25.
//

import SwiftUI

struct MainView: View {
    //Cargamos desde UserDefaults si ya se vio la vista
    @State private var hasSeenOnBoarding: Bool = UserDefaults.standard.bool(forKey: "hasSeenOnBoarding")
    
    
    var body: some View {
        
        if hasSeenOnBoarding {
            MenuView()
        }else{
            WelcomeView(hasSeenOnboarding: $hasSeenOnBoarding)
        }
        
    }
}

#Preview {
    MainView()
}
