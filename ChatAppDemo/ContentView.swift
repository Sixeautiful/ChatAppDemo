//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Kirill Willer on 31.05.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagemanager = messageManager()
    
    var body: some View {
        VStack {
            VStack{
                Header()
                ScrollViewReader{ proxy in
                    
                ScrollView{
                    ForEach(messagemanager.message, id: \.id){ text in
                        Messeges_bubble(message: text)
                    }
                } // scroll wiew
                    
                .padding(.top, 10)
                .background(.white)
                //can add custom corner radios
//                .onChange(of: messagemanager.lastMessageId) { id in
//            // When the lastMessageId changes, scroll to the bottom of the conversation
//            withAnimation {
//                proxy.scrollTo(id, anchor: .bottom)
//            }
//
//                } // onChange
                }
            } //Vstack 1
            .background(Color("Peach"))
            MessageField()
        }// Vstack2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

