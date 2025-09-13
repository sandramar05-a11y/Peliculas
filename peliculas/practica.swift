//
//  practica.swift
//  peliculas
//
//  Created by WIN603 on 05/09/25.
//

import SwiftUI
var aumento: CGFloat = 2.0

struct practica: View {
    var body: some View {
        HStack{
            Image(systemName: "suit.heart")
            scaleEffect(aumento)
            Button(action: {
                if aumento >= 3.0{
                    aumento = 2.0
                }else{
                    aumento += 1.0 //se hace mas grande la imagen
                }
            }){
                Text("Oprimir")
            } .padding(10)
                .frame(width:200, height: 50)
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    practica()
}
