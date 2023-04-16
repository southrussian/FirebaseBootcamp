//
//  AuthView.swift
//  FirebaseBootcamp
//
//  Created by Danil Peregorodiev on 16.04.2023.
//
 
import Foundation
import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack {
            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: 55)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AuthView()
        }
    }
}
