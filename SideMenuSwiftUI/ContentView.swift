//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Edilson Borges on 22/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView{
            ZStack{
                if(isShowing){
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.9 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    },
                    label:{Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .onAppear{
                isShowing = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View{
        ZStack{
            Color(.white)
            Text("Home")
        }
     
    }
}
