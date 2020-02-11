//
//  PickerView.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 23/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    
    @State private var selection = 0
    var colors = [Color.green, Color.red, Color.yellow, Color.purple, Color.orange]
    var body: some View {
        
        VStack{
            
        Picker(selection: $selection, label: Text("Colors")){
            ForEach(0..<colors.count){
                Text("Hello, World!").tag($0)
                    .foregroundColor(self.colors[$0])
            }
        }
        .pickerStyle(WheelPickerStyle())
            
        }
        .padding()
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
