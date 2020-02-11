//
//  CustomFrame.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 24/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct CustomFrame: View {
    
    var body: some View {
           Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .frame(minWidth: 0, idealWidth:200, maxWidth: .infinity, minHeight: 0, idealHeight: 20, maxHeight: .infinity, alignment: .center)
            .background(Color.pink)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CustomFrame_Previews: PreviewProvider {
    static var previews: some View {
        CustomFrame()
    }
}
