//
//  SettingsView.swift
//  FirebaseBootcamp
//
//  Created by Danil Peregorodiev on 16.04.2023.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    func logout() throws {
        try AuthManager.shared.signOut()
    }
}

struct SettingsView: View {
    
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showAuthView: Bool
    
    var body: some View {

        List {
            Button("Log out") {
                Task {
                    do {
                        try viewModel.logout()
                        showAuthView = true
                    } catch {
                        print(error)
                    }
                }
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showAuthView: .constant(false))
    }
}
