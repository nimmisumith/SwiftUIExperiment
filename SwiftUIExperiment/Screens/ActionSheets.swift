//
//  ActionSheets.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 21/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct ActionSheets: View {
    
    @State var showSheet = false
    var body: some View {
        Button(action:{
            self.showSheet = true
        }){
            Text("Show ActionSheet")
        }.actionSheet(isPresented: $showSheet){
            ActionSheet(title: Text("Add Image").fontWeight(.semibold).foregroundColor(.black), message: Text("Choose One"), buttons: [.default(Text("Camera")), .default(Text("Gallery")), .cancel()])
        }
    }
}

struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
