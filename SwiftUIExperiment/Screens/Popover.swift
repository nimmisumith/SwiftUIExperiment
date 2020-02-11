//
//  Popover.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 22/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Popover: View {
    @State var showPopover = false
    var body: some View {
       VStack {
            Button("Show popover") {
                self.showPopover = true
            }.popover(
                isPresented: self.$showPopover,
                arrowEdge: .leading
            ) { Text("Popover") }
        }
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover()
    }
}
