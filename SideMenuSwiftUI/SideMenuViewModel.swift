//
//  SideMenuViewModel.swift
//  SideMenuSwiftUI
//
//  Created by Edilson Borges on 22/07/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    
    case profile
    case listes
    case bookmarks
    case messages
    case notificationes
    case lagout
    
    var title: String {
        switch self {
        case .profile : return "Perfil"
        case .listes: return "Lista"
        case .bookmarks: return "Livros"
        case .messages: return "Mensagem"
        case .notificationes: return "Notificação"
        case .lagout: return "Sair"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .listes: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .messages: return "bubble.left"
        case .notificationes: return "bell"
        case .lagout: return "arrow.left.square"
        }
    }
}
