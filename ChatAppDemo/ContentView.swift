//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Kirill Willer on 31.05.22.
//

import SwiftUI

struct ContentView: View {
    var messagear = ["hi","how are u?", "good"]
    var body: some View {
        VStack {
            VStack{
                SwiftUIView()
                ScrollView{
                    ForEach(messagear, id: \.self){ text in
                        Messeges_bubble(message: Message(id: "12345", text: text, recived: true, timestamp: Date()))
                    }
                } // scroll wiew
                .padding(.top, 10)
                .background(.white)
                //can add custom corner radios
                
            } //Vstack 1
            .background(Color("Peach"))
            Text_messege_field_()
        }// Vstack2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
