//
//  WelcomeView.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 24/05/25.
//

import SwiftUI

struct WelcomeView: View {
    
    //Usamos @inding para poder modificar el estado desde MainView
    @Binding var hasSeenOnboarding: Bool
    
    
    var body: some View {
        VStack {
            Text("Bienvenido a la app !")
                .font(.largeTitle)
                .padding()
            Button("Empezar"){
                // Guardar en UserDefaults que ya se vio
                UserDefaults.standard.set(true, forKey:"hasSeenOnboarding" )
                // Ocultar la vista
                hasSeenOnboarding = true
            }
            .padding()
        }
    }
}

