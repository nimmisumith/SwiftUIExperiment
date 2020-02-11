//
//  Forms.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 28/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Forms : View {
    
    @State private var username : String = ""
    
    var body: some View {
      
        Form {
            TextField("Username", text: $username)
            
            //email
            //password with ***
            //phone no
            //sex toggle
            //blood group picker/ dropdown
            //dob
            
            
        }
     
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
