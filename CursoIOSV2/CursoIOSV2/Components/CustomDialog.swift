//
//  CustomDialog.swift
//  CursoIOSV2
//
//  Created by Luis Espana on 12/04/25.
//

import SwiftUI

struct CustomDialog<Content:View>: View {
    
    let closeDialog: () -> Void
    let onDismissOutSide: Bool
    let content:Content
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.gray.opacity(0.7))
                .ignoresSafeArea()
                .onTapGesture {
                    if onDismissOutSide {
                        withAnimation {
                            closeDialog()
                        }
                    }
                }
            content
                .frame(width: UIScreen.main.bounds.size.width-100 , height: 300)
                .padding()
                .background(.white)
                .cornerRadius(16)
                .overlay(alignment: .topTrailing){
                    Button(action:{
                        withAnimation {
                            closeDialog()
                        }
                    },
                           label: {
                        Image(systemName: "xmark.circle")
                    }).foregroundColor(.gray)
                        .padding(16)
                }
        }
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.size.width ,
               height: UIScreen.main.bounds.size.height,
               alignment: .center)
    }
}

/*#Preview {
    CustomDialog()
}*/
