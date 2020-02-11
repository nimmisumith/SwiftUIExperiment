//
//  GradientScreen.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 08/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

enum GradientStyle{
    case NONE,LINEAR,RADIAL,ANGULAR
}

struct GradientScreen: View {
    
    @State var selectedGradient: GradientStyle
    
    var body: some View {
        ZStack {
           
                self.setupGradient()
                
                VStack(alignment: .center){
                    Button(action: {
                        self.selectedGradient = GradientStyle.LINEAR
                    }){
                        Text("Linear Gradient")
                    }
                    .padding()
                    
                    Button(action:{
                        self.selectedGradient = GradientStyle.RADIAL
                    }){
                        Text("Radial Gradient")
                    }
                    .padding()
                    
                    Button(action: {
                        self.selectedGradient = GradientStyle.ANGULAR
                    }){
                        Text("Angular Gradient")
                    }.padding()
                    
                    Button(action:{
                        self.selectedGradient = GradientStyle.NONE
                    }){
                        Text("Clear")
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                                      
                           let url: NSURL = URL(string: "https://medium.com/flawless-app-stories/gradient-in-swiftui-6c4fc408b7e8")! as NSURL

                                       UIApplication.shared.open(url as URL)

                                   }) {
                                   Text(verbatim: "Reference :" + "https://medium.com/flawless-app-stories/gradient-in-swiftui-6c4fc408b7e8")
                                       .font(.subheadline)
                                       .foregroundColor(.gray)
                    }.padding()
                    
                    
                }.padding(.top, 100)
                
        
            
        }.edgesIgnoringSafeArea(.all)
    }
    
    
    
    func setupGradient() -> AnyView {
        switch selectedGradient{
        case GradientStyle.LINEAR:
            return AnyView(LinearGradient(gradient: Gradient(colors: [.orange, .white, .green]), startPoint: .top, endPoint: .bottom))
            
        case GradientStyle.RADIAL:
            return AnyView(RadialGradient(gradient: Gradient(colors: [.white, .blue, .white, .pink]), center: .center, startRadius: 100, endRadius: 470))
            
        case GradientStyle.ANGULAR:
            return AnyView(AngularGradient(gradient: Gradient(colors: [.white, .pink, .black,.gray,.white,.pink]), center: .center))
            
        case GradientStyle.NONE: fallthrough
            
        default: return AnyView(EmptyView())
        }
    }
    
}

struct GradientScreen_Previews: PreviewProvider {
    static var previews: some View {
        GradientScreen(selectedGradient: .NONE)
    }
}
