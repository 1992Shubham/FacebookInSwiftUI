//
//  NewsFeeds.swift
//  FacebookSwiftUI
//
//  Created by SHUBHAM AGARWAL on 27/03/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import SwiftUI

struct NewsFeeds: View {
    
    var userData: ModelClass
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(userData.imageName)
                        .resizable().scaledToFill().clipped().frame(width: 50, height: 50).cornerRadius(25)
                    VStack(alignment: .leading) {
                        Text(userData.name)
                            .font(.system(size: 21, weight: .heavy, design: .default))
                        Text("2 Hr")
                    }
                    Spacer()
                }
                
                Text(userData.description)
            }.padding(.leading, 10)
                .padding(.trailing, 10)
            Image(userData.imageName)
                .resizable().scaledToFill().clipped().frame( height: 300)
        }

    }
}

struct NewsFeeds_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeeds(userData: actressModelArray[0])
    }
}
