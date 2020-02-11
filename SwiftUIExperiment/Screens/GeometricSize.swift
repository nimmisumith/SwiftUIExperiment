//
//  GeometryReader.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 24/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct GeometricSize: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack {
               
                Text("Cancel")
                    .frame(width: geometry.size.width/2, height: 50)
                    .background(Color.yellow)
                Text("Ok")
                    .frame(width: geometry.size.width/2, height: 50)
                .background(Color.yellow)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
        
        }
        
    }
}

struct GeometricSize_Previews: PreviewProvider {
    static var previews: some View {
        GeometricSize()
    }
}
