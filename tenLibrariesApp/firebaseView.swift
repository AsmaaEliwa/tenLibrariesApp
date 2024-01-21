//
//  firebaseView.swift
//  tenLibrariesApp
//
//  Created by asmaa gamal  on 22/01/2024.
//
import SwiftUI
import Firebase

struct FirebaseView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignIn = false

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                signIn()
            }) {
                Text("Sign In")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            if isSignIn {
                Text("Signed in successfully!")
            }
        }
        .padding()
    }

    private func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Sign in error: \(error.localizedDescription)")
            } else {
                print("Sign in successful")
                isSignIn = true
            }
        }
    }
}

struct FirebaseView_Previews: PreviewProvider {
    static var previews: some View {
        FirebaseView()
    }
}
