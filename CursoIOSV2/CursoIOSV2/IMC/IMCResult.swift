//
//  IMCResult.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 31/03/25.
//

import SwiftUI

struct IMCResult: View {
    
    let userWeight:Double
    let userHeight:Double
    
    var body: some View {
        VStack{
            Text("Tu resultado")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            let result = calculateImc(weight: userWeight, height: userHeight)
            InformationView(result: result)
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

func calculateImc(weight:Double,height:Double) -> Double{
    let result = weight / ((height/100) * (height/100))
    return result
}

struct InformationView: View {
    let result:Double
    var body: some View {
        
        let information = getImcResult(result: result)
        
        VStack{
            
            Spacer()
            Text(information.0)
                .foregroundColor(information.2)
                .font(.title)
                .bold()
            // Text(String(Int(result)))
            Spacer()
            Text( " \(result , specifier: "%.2f") " )
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Spacer()
            Text(information.1)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.horizontal, 20)
            Spacer()
        }
        .frame(maxWidth:.infinity , maxHeight: .infinity)
        .background(.backgroundComponent)
        .cornerRadius(20)
        .padding(16)
    }
}

func getImcResult(result:Double) -> (String, String, Color){
    
    let title:String
    let description:String
    let color:Color
    
    switch result {
    case 0.00...19.99:
        title = "Bajo peso"
        description = "Estás por debajo del peso recomendado según el IMC"
        color = .yellow
    case 20.00...24.99:
        title = "Peso Normal"
        description = "Estás en el peso recomendado según el IMC"
        color = .green
    case 25.00...29.99:
        title = "Sobrepeso"
        description = "Estás por encima del peso recomendado según el IMC"
        color = .orange
    case 30.00...100:
        title = "Obesidad"
        description = " Estás muy por encima del peso recomendado según el IMC"
        color = .red
    default :
        title = "Error"
        description = "Ha ocurrido un error"
        color = .gray
    }
    
    return (title, description, color)
}

#Preview {
    IMCResult(userWeight:76, userHeight:174)
}
