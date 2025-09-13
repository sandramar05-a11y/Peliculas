import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                Peliculas(
                    imagen: "coraline",
                    titulo: "Coraline y la puerta secreta",
                    duracion: "155 min",
                    clasificacion: "TBC",
                    color: .gray,
                    estatus: .cyan,
                    venta: "Re-estreno"
                )
                
                Peliculas(
                    imagen: "batman",
                    titulo: "Batman: El señor de la noche",
                    duracion: "190 min",
                    clasificacion: "PG",
                    color: .yellow,
                    estatus: .blue,
                    venta: "Estreno"
                )
                
                Peliculas(
                    imagen: "movies",
                    titulo: "Akira: Película japonesa de ciencia ficción clásica",
                    duracion: "190 min",
                    clasificacion: "A",
                    color: .green,
                    estatus: .blue,
                    venta: "Preventa"
                )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
