//
//  IMCView.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 26/03/25.
//

import SwiftUI

struct IMCView: View {
    
    @State var gender:Int = 1
    @State var height:Double = 150
  /*  init(){
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    */
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Jaime", imageName: "heart.fill", gender:0, selectedGender: $gender)
                ToggleButton(text: "Jaime", imageName: "heart.fill", gender:1, selectedGender: $gender)
            }
            
            HeightCalculator(selectedHeight: $height)
            
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(.backgroundApp)
      //      .navigationTitle("IMC Jaime")
            .toolbar{
                ToolbarItem(placement : .principal){
                    Text("IMC Calculator JAIME")
                        .bold()
                        .foregroundColor(.white)
                }
            }
    }
}

// Componente Toogle

struct ToggleButton: View {
    
    //Parametros
    
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender: Int
    
    var body: some View {
        let color = if(gender == selectedGender){
            Color.backgroundComponentSelected
        }else{
            Color.backgroundComponent
        }
        
        Button(action: {
            selectedGender = gender
        }){
            VStack
            {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(color)
            
        }
    }
    
    
}


struct InformationText : View {
    let text:String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}

struct TitleText:View {
    let text:String
    var body: some View{
        Text(text)
            .font(.title2)
            .bold()
            .foregroundColor(.gray)
    }
}



struct HeightCalculator: View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight , in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal,16)
        }.frame(maxWidth : .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}



#Preview {
    
    IMCView()
}
