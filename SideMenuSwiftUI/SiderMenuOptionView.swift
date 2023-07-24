//
//  SiderMenuOptionView.swift
//  SideMenuSwiftUI
//
//  Created by Edilson Borges on 22/07/23.
//

import SwiftUI

struct SiderMenuOptionView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
            
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SiderMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SiderMenuOptionView(viewModel: .profile)
    }
}
