//
//  ModalView.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 22/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @State private var showModal = false
    var body: some View {
         VStack {
                   Button("Show modal") {
                       self.showModal = true
                   }
               }.sheet(isPresented: $showModal, onDismiss: {
                   print(self.showModal)
               }) {
                   Modal(message: "This is Modal view")
               }
    }
}

struct Modal: View {
    @Environment(\.presentationMode) var presentation
    let message: String

    var body: some View {
        VStack {
            Text(message)
            Button("Dismiss") {
                
                self.presentation.wrappedValue.dismiss()
                
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
