//
//  ContentView.swift
//  SwiftUIExperiment
//
//  CreateSd by NeuAlto on 08/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 20){
                Group{
                    NavigationLink(destination: GradientScreen(selectedGradient: .NONE)){
                        Text("Gradients")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Stacks(selection: .VS)){
                        Text("Stacks")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Images()){
                        Text("Images")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: TextView()){
                        Text("Texts")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Buttons()){
                        Text("Buttons")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: TextFields()){
                                           Text("TextFields")
                                               .font(.headline)
                                               .fontWeight(.medium)
                                               .foregroundColor(.black)
                                       }
                    NavigationLink(destination: Menus()){
                        Text("Context Menus")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Alerts()){
                        Text("Alert View")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: ActionSheets()){
                        Text("Action Sheets")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Popover()){
                        Text("Popovers")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                   
                }
                Group{
                    NavigationLink(destination: ModalView()){
                                           Text("Modal View")
                                               .font(.headline)
                                               .fontWeight(.medium)
                                               .foregroundColor(.black)
                                       }
                    NavigationLink(destination: PickerView()){
                        Text("Picker")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: CustomFrame()){
                        Text("Custom Frame")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: GeometricSize()){
                        Text("Geometry Reader")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Lists()){
                        Text("Lists")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: Forms()){
                        Text("Forms")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .padding()
            .navigationBarTitle("Contents", displayMode: .inline)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
