import SwiftUI

struct Peliculas: View {
    let imagen: String
    let titulo: String
    let duracion: String
    let clasificacion: String
    let color: Color
    var estatus: Color
    var venta: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image(imagen)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0, maxHeight: 230)
                    .cornerRadius(7)
                
                    Rectangle()
                    .padding()
                    .background(estatus)
                    .frame(maxWidth: 80,maxHeight: 20)
                    .cornerRadius(6)
                    .overlay(
                        Text(venta)
                        .font(.system(size:12))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    )
    
            

            }
            .padding(.leading)
            
            VStack {
                HStack {
                    Rectangle()
                        .fill(color)
                        .opacity(0.7)
                        .frame(width: 37, height: 20)
                        .cornerRadius(6)
                        .overlay(
                            Text(clasificacion)
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                
                        )
                    Text(duracion)
                }
                .padding(.leading,1)
                
                Text(titulo)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(maxWidth: 130, maxHeight: 50)
                    .truncationMode(.middle)
                
                HStack {
                    Text("Ver detalle")
                        .padding(.leading)
                        .underline()
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.blue)
                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                }
                .padding(.trailing, 30)
            }
            .padding(.trailing)
        }
        .padding(.trailing)
    }

}

#Preview {
    Peliculas(imagen: "coraline", titulo: "Coraline y la puerta secreta", duracion: "155 min", clasificacion: "TBC", color: .yellow, estatus: .blue, venta: "Preventa")
}
