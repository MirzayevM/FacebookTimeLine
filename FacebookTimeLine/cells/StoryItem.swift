//
//  StoryItem.swift
//  FacebookTimeLine
//
//  Created by Mirzabek on 08/08/22.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        
        ZStack(alignment:.topLeading){
            
            Image("snake").resizable().frame(width: 150, height: 250).scaledToFit()
            
            VStack(alignment:.leading){
                Image("profile").resizable().frame(width: 50, height: 50).cornerRadius(25).overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue,lineWidth: 5))
                Spacer()
                Text("Mirzaev").foregroundColor(.white).fontWeight(.bold).font(.system(size: 17))
                Text("Mirzabek").foregroundColor(.white).fontWeight(.bold).font(.system(size: 17))
            }.padding()
            
        }.frame(width:150 , height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
