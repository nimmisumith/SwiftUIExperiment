//
//  TextFields.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 29/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct TextFields: View {
    
    @State var text : String = ""
    var body: some View {
        
        Form{
           
            TextField("Plain TextField Style", text: $text)
            .textFieldStyle(PlainTextFieldStyle())
            TextField("Rounded Border TextField Style", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Default TextField Style", text: $text)
            .textFieldStyle(DefaultTextFieldStyle())
        }
        
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
