//
//  StoryView.swift
//  FacebookSwiftUI
//
//  Created by SHUBHAM AGARWAL on 27/03/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(actressModelArray, id: \.self) { model in
                    VStack {
                        Image(model.imageName)
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 140, height: 220)
                            .cornerRadius(20)
                        
                        Text(model.name)
                    }
                }
            }.padding(.all, 10)
        }
        
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
