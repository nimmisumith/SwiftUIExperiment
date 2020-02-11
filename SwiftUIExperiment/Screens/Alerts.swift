//
//  Alerts.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 21/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Alerts: View {
    
    @State var showAlert = false
    @State var secondAlert = false
    @State var thirdAlert = false
    
    var body: some View {
        VStack{
            
            Button(action:{
                self.showAlert.toggle()
            }){
                Text("Simple Alert")
                    .foregroundColor(.red)
            }
            .alert(isPresented: $showAlert){
                Alert(title: Text("This is a simple alert"))
            }
            Spacer().frame(height: 50)
            
            Button(action:{
                self.secondAlert.toggle()
            }){
                Text("Alert with Buttons")
            }
            .alert(isPresented: $secondAlert){
                Alert(title: Text("Title"), message: Text("Here is the message"), primaryButton: .default(Text("Got It!")), secondaryButton: .cancel())
            }
            
            Spacer().frame(height: 50)
            
            Button(action:{
                self.thirdAlert.toggle()
            }){
                Text("Action to Alert's button")
                    .foregroundColor(.purple)
            }.alert(isPresented: $thirdAlert){
                Alert(title: Text("Exit"), message: Text("Do you want to exit? "), primaryButton: .destructive(Text("YES")){  //can be default also
                    print("some actions....")
                    }, secondaryButton: .cancel())
            }
            
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
