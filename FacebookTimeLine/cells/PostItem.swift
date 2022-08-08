//
//  PostItem.swift
//  FacebookTimeLine
//
//  Created by Mirzabek on 08/08/22.
//

import SwiftUI

struct PostItem: View {
    
    var img_url = "post1"
    
    var body: some View {
        VStack{
            //header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("profile").resizable().frame(width: 50, height: 50)
                        .cornerRadius(25)
                    
                    ZStack{
                        Circle().frame(width: 22, height: 22).foregroundColor(.white)
                        Circle().frame(width: 16, height: 16).foregroundColor(.green)
                    }
                }
            
            
            VStack(alignment:.leading, spacing:5){
                Text("Mirzaev").fontWeight(.bold)
                
                HStack{
                    Text("18 m")
                    Image(systemName: "globe.americas.fill").resizable().frame(width:20, height: 20)
                }
               
            }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            Image(img_url).resizable().scaledToFit()
            
            //like , love, commend,icons
            
            HStack(spacing: 5){
                HStack(spacing:-7){
                    Image("love").resizable().frame(width: 20, height: 20)
                    Image("love").resizable().frame(width: 20, height: 20)
                    
                }
                
                Text("8.4 K")
                Spacer()
                Text("240 comments")
                Text("54 shared")
            }.padding(.leading,10).padding(.trailing,10)
            
            HStack(alignment:.center){}.frame(width: 0.5, height: 0.5).frame(maxWidth:.infinity).background(.gray.opacity(0.5)).padding(.top,5)
            
            
            HStack{
                Spacer()
                HStack{
                    Image(systemName: " ")
                    Text("Like")
                   
                }
                Spacer()
                HStack{
                    Image(systemName: " ")
                    Text("Comment")
                   
                }
                Spacer()
                HStack{
                    Image(systemName: " ")
                    Text("Share")
                 
                }
                Spacer()
            }.frame( height: 40).padding(.top,5)
            
            HStack(alignment:.center){}.frame(width: 10, height: 10).frame(maxWidth:.infinity).background(.gray.opacity(0.5)).padding(.top,5)
    }
}
}
struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
