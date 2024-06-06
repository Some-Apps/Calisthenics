//
//  FirstLauchView.swift
//  Calisthenics
//
//  Created by Jared Jones on 5/12/24.
//

import SwiftUI

struct FirstLauchView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("firstLaunch") var firstLaunch: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Welcome")
                    .font(.headline)
                Divider()
                    Text("It looks like this is your first time here. You can read how the app works below or just try to figure it out on your own. You can always view these instructions later in settings")
                    Button("Continue to app", role: .cancel) {
                        dismiss()
                    }
                    .buttonStyle(.bordered)
                
                TutorialView()
            }
            .padding()

        }
    }
}
