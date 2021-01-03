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
                .resizable().scaledToFill().clipped().frame(width: UIScreen.main.bounds.width, height: 300)
            
             Divider()
            
            HStack {
                // Live
                Button(action: {
                    print("Like")
                }) {
                    HStack {
                        Spacer()
                        Image("like").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("like")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
                Divider()
                    .frame(height: 20)
                // Photo
                Button(action: {
                    print("Comment")
                }) {
                    HStack {
                        Spacer()

                        Image("comment").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("comment")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
                
                Divider()
                    .frame(height: 20)

                
                // Check_in
                Button(action: {
                    print("Share")
                }) {
                    HStack {
                        Spacer()

                        Image("share").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("share")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
            }
            
            Divider()

        }

    }
}

struct NewsFeeds_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeeds(userData: actressModelArray[0])
    }
}
