//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Edilson Borges on 22/07/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
            
                
                ForEach(SideMenuViewModel.allCases, id: \.self){ option in
                    NavigationLink(destination: {Text(option.title)}, label: { SiderMenuOptionView(viewModel: option)})
                }
                //Cell Items
                Spacer()
            }
            
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
