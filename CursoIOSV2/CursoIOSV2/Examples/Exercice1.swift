import SwiftUI

struct Exercice1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(height:100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height:100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(height:100)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height:100)
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height:300)
                Circle()
                    .foregroundColor(.blue)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height:100)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(height:100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height:100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(height:100)
            }
            
        }
        .padding()
    }
}

#Preview {
    Exercice1()
}
