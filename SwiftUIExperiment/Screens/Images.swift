//
//  Images.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 13/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Images: View {
    
    // @ViewBuilder
    var body: some View {
        ScrollView{
            VStack{
                Group{
                    Text("Image from Assets")
                    Image("turtile-rock").resizable()
                        .frame(width: 250, height: 200)
                    Spacer()
                    Divider()
                    
                    Text("To load icons from Apple's symbol set")
                    Image(systemName: "cloud.heavyrain.fill").resizable().frame(width: 150, height: 150).foregroundColor(.blue)
                    
                    Spacer()
                    Divider()
                    
                    Text("Image from existing UIImage")
                    Image(uiImage: UIImage(named: "lake")!).resizable().aspectRatio(contentMode: .fit)
                    
                }
                Group{
                    Spacer()
                    Divider()
                    
                    Text("Circular Image")
                    
                    Image("turtile-rock").resizable().frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
