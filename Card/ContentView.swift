//
//  ContentView.swift
//  Card
//
//  Created by Hazel Alain on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoginSuccessful = false
    @State private var showingCardView = false

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .padding()

                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)

                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                NavigationLink(destination: CardView(), isActive: $showingCardView) {
                    EmptyView()
                }

                Button("Login") {
                    // Aquí puedes agregar la lógica de autenticación
                    // por ejemplo, verificar el nombre de usuario y la contraseña.
                    // Este es solo un ejemplo básico.
                    if username == "hazelo235" && password == "12345" {
                        isLoginSuccessful = true
                        showingCardView = true
                    } else {
                        isLoginSuccessful = false
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(isLoginSuccessful ? Color.green : Color.blue)
                .cornerRadius(10)

                Spacer()
            }
            .padding()
            .navigationTitle("Login")
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            Image(systemName: "creditcard")
                .imageScale(.large)
                .foregroundColor(.blue)
                .padding()

            Text("Tarjeta de Débito")
                .font(.title)

            // Aquí puedes mostrar la información del usuario o de la tarjeta de débito.
            // Por ejemplo:
            Text("Nombre del Usuario")
            Text("Número de Tarjeta: **** **** **** 1234")
            Text("Fecha de Vencimiento: 12/24")

            Spacer()
        }
        .padding()
        .navigationTitle("Tarjeta de Débito")
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
