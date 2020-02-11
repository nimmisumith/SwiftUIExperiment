//
//  TextView.swift
//  SwiftUIExperiment
//
//  Created by NeuAlto on 14/01/20.
//  Copyright © 2020 NeuAlto. All rights reserved.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack{
            Group{
            
            Text("Normal Text")
            Spacer()
            Text("To apply system font, change font modifier to title")
                .font(.title)
                .lineLimit(2)
            Spacer()
            Text("Change Text color")
                .foregroundColor(.green)
            Spacer()
            Text("To limit the number of lines in a text, use the lineLimit modifier. If the text exceeds the lineLimit, SwiftUI will truncate the line at the end")
            .lineLimit(2)
            Spacer()
            Text("You can place the truncation on beginning/middle using truncationMode")
            .lineLimit(1)
                .truncationMode(.middle)
            Spacer()
            }
            Group{
                Text("Tracking - will give equal space between letters")
                Text("flies")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .tracking(50)
                Spacer()
                Text("Kerning - will show ligatures together, but will add leading/trailing spaces")
                Text("flies")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .kerning(50)
            }
            
        }.padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
