//
//  Stacks.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 10/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Stacks: View {
    
    enum SType {
        case VS,HS,ZS
    }
    
    @State var selection : SType
    
    var body: some View {
        
       VStack(alignment: .center){
           
        HStack(alignment: .center){
            
            Button(action:{
                self.selection = SType.VS
            }){
                Text("VStack")
                 .foregroundColor(.green)
            }
            
            Button(action:{
                self.selection = SType.HS
            }){
                Text("HStack")
                .foregroundColor(.green)
            }
            Button(action:{
                self.selection = SType.ZS
            }){
                Text("ZStack")
                .foregroundColor(.green)
            }
            
        }
        Spacer()
        setupViews()
        Spacer()
            
        }.padding()
    }
    
    
    func setupViews() -> AnyView {
        let rect = Rectangle()
            .fill(Color.purple)
            .frame(width: 150, height: 150)

        let ellipse = Ellipse()
            .fill(Color.yellow)
            .frame(width: 150, height: 100)

        let circle = Circle()
            .fill(Color.black)
            .frame(width: 100, height: 50)
           
        
        
        switch selection {
            
          case .VS :
            let vs = VStack{
                rect
                ellipse
                circle
            }
            return AnyView(vs)
         case .ZS:
            let zs = ZStack{
                rect
                ellipse
                circle
            }
            return AnyView(zs)
          case .HS : fallthrough
          default:
            let hs = HStack(alignment: .center, spacing: 5){
                rect
                ellipse
                circle
            }
            return AnyView(hs)
        }
           
    }
   
}



struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks(selection: .VS)
    }
}
