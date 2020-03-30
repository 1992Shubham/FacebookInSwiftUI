//
//  ContentView.swift
//  FacebookSwiftUI
//
//  Created by SHUBHAM AGARWAL on 25/03/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HeaderView(userName: .constant(""))
                StoryView()
                ForEach(actressModelArray, id: \.self) { model in
                    NewsFeeds(userData: model)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
