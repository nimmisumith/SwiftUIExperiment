//
//  Menus.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 21/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Menus: View {
    var body: some View {
        
        Text("Long Click") //long press
            .contextMenu{
             
                Button(action: {
                    
                }){
                    Text("Add")
                }
                Button(action:{
                    
                }){
                    Text("Delete")
                }
        }
        
        
    }
}

struct Menus_Previews: PreviewProvider {
    static var previews: some View {
        Menus()
    }
}
