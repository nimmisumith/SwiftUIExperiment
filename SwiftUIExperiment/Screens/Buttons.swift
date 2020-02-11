//
//  Buttons.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 20/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    @State var count = 0
    var body: some View {
        
        VStack{
            Button(action: {
                self.count += 1
                print("Simple Button Clicked \(self.count)")
            })
            {
                Text("Simple Button")
            }
            
            Spacer().frame(height: 50)
            
            Button(action: {
                self.count -= 1
                print("Modified Button Clicked \(self.count)")
            }){
                Text("Custom Button")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .border(Color.black, width: 2)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.green, lineWidth: 2))
                
            }
            Spacer().frame(height: 50)
            Button(action :{
                print("Image Button")
            }){
                Image(systemName:"arkit")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.purple)
                    .padding()
                    .background(Color.init(UIColor.white))
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.purple, lineWidth: 4))
                    .shadow(radius: 5.0)
                
            }
            Spacer().frame(height: 50)
            Button(action: {
                print("Image with Text")
            }){
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Move to Trash")
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.secondary)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .shadow(color:.green, radius: 20.0, x: 20, y: 20)
            }
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
