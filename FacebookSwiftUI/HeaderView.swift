//
//  HeaderView.swift
//  FacebookSwiftUI
//
//  Created by SHUBHAM AGARWAL on 27/03/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var userName: String
    
    var body: some View {
        
        VStack {
            HStack {
                Image("Emma Stone")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
                
                TextField("Enter Something here", text: $userName)
                .frame( height: 50)
                    .padding(.leading)
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 1))
            }.padding(.leading)
                .padding(.trailing)
            
            Divider()

            
            HStack {
                // Live
                Button(action: {
                    print("Live")
                }) {
                    HStack {
                        Spacer()
                        Image("live").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("Live")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
                Divider()
                    .frame(height: 20)
                // Photo
                Button(action: {
                    print("Photo")
                }) {
                    HStack {
                        Spacer()

                        Image("image").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("Photo")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
                
                Divider()
                    .frame(height: 20)

                
                // Check_in
                Button(action: {
                    print("Check-In")
                }) {
                    HStack {
                        Spacer()

                        Image("placeholder").resizable().renderingMode(.original)
                            .frame(width: 20, height: 20)
                        Text("Check-In")
                            .font(.subheadline).foregroundColor(.black)
                        Spacer()

                    }
                }
            }
            Divider()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(userName: .constant(""))
    }
}
