//
//  NewParticipantView.swift
//  LetSwift Data Manager
//
//  Created by BumMo Koo on 04/08/2019.
//  Copyright © 2019 Cleanios. All rights reserved.
//

import SwiftUI

struct NewParticipantView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    private var doneButton: some View {
        Button(action: done, label: {
            Text("Done")
        })
    }
    
    var body: some View {
        NavigationView {
            ParticipantDetailView()
                .navigationBarTitle("New Participant")
                .navigationBarItems(trailing: doneButton)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    // MARK: - Action
    private func done() {
        presentationMode.value.dismiss()
    }
}

#if DEBUG
struct NewParticipantView_Previews: PreviewProvider {
    static var previews: some View {
        NewParticipantView()
    }
}
#endif