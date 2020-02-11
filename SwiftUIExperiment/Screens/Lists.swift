//
//  Lists.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 28/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct ContactRow : View{
    var name : String
    var number : String
    var imagename = "person.fill"
    var body: some View {
        
        Group{
                HStack{
                    Image(systemName: self.imagename).resizable()
                    .resizable().aspectRatio(contentMode: .fit)
                        .foregroundColor(.purple)
                        .clipShape(Circle())
                        .padding()
                        .overlay(Circle().stroke(Color.purple, lineWidth: 4))
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text(self.name)
                            .font(.title)
                            .foregroundColor(.purple)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        Text(self.number)
                            .fontWeight(.thin)
                            .font(.largeTitle)
                    }
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                  
                }
             .background(Color.white)
            
        }
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, idealHeight: 60, maxHeight: 100, alignment: .leading)
        .padding()
        
    }
}


struct Lists: View {
    var body: some View {
        
        List{
            
           ContactRow(name: "Jack", number: "564778838")
           ContactRow(name: "Jill", number: "4774893993")
           ContactRow(name: "Joy", number: "6555748388")
           ContactRow(name: "Jim", number: "5456463373")
            
        }
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
