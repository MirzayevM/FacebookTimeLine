//
//  ContentView.swift
//  FacebookTimeLine
//
//  Created by Mirzabek on 08/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                //icons
                
                VStack{
                    HStack{
                        Image("profile").resizable().frame(width: 60, height: 60).cornerRadius(30)
                        Text("What's On Yor Mind ?").font(.system(size: 17))
                    }.frame(height: 90)
                        .frame(maxWidth:.infinity, alignment: .topLeading)
                        .padding(.leading,10).padding(.trailing,10)
                    
                    HStack{}.frame(height:1).frame(maxWidth:.infinity).background(.gray.opacity(0.3))
                    
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "video.badge.ellipsis")
                            Text("Live")
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "photo.artframe")
                            Text("Photo")
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "video.fill.badge.plus")
                            Text("Room")
                        }
                        Spacer()
                    }.frame(height:50)
                }
                
                //online offline
                
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth:.infinity)
                        .background(.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing:20){
                                RoomItem(isOnline:false)
                                RoomItem(isOnline:true)
                                RoomItem(isOnline:true)
                                RoomItem(isOnline:true)
                                RoomItem(isOnline:true)
                                RoomItem(isOnline:true)
                            }.frame(height: 100).frame(maxWidth:.infinity)
                                .padding(.leading,10)
                            
                        }
                    }
                }
                
                //stories
                
                VStack{
                    HStack{}.frame(height:10).frame(maxWidth:.infinity).background(.gray.opacity(0.3))
                    
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }.padding(.leading,10)
                        .padding(.top,10)
                        .padding(.bottom,10)
                }
                
                //post items
                
                VStack{
                    HStack{}.frame(height:10).frame(maxWidth:.infinity).background(.gray.opacity(0.3))
                    PostItem(img_url : "post1")
                    PostItem(img_url : "post2")
                    PostItem(img_url : "post3")
                }
                
            }.navigationBarItems(
                leading: Text("facebook").fontWeight(.bold).foregroundColor(.blue).font(.system(size: 25)) ,
                trailing: HStack{
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3)).frame(width: 36, height: 36)
                        Image(systemName: "magnifyingglass")
                    }
                    
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3)).frame(width: 36, height: 36)
                        Image(systemName: "bolt.circle")
                    }
                })
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
