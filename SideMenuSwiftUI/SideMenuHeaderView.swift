//
//  SideMenuHeaderView.swift
//  SideMenuSwiftUI
//
//  Created by Edilson Borges on 22/07/23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {Image(systemName: "xmark")})
                .frame(width: 32, height: 32)
                .foregroundColor(.white)
               
            
            
            VStack(alignment: .leading){
                Image("gato")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 70, height: 65)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Edilson Borges")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@teste")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing : 12){
                    HStack(spacing : 4){
                        Text("1,235").bold()
                        Text("Seguidores")
                    }
                    
                    HStack(spacing : 4){
                        Text("150").bold()
                        Text("Seguindo")
                    }
                    Spacer()
                }
                
                Spacer()
            }
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
