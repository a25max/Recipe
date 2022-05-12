//
//  AppTabNavigation.swift
//  Recipe
//
//  Created by Aimi on 2022/05/11.
//

import SwiftUI

struct AppTabNavigation: View {
    
    enum Tab {
        case home
        case save
        case recipe
        case profile
    }
    
    @State private var selection: Tab = .home
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                HomeView()
            }.tabItem {
                let homeText = Text("ホーム", comment: "ホーム")
                Label {
                    homeText
                } icon: {
                    Image(systemName: "heart.fill")
                }.accessibility(label: homeText)
            }.tag(Tab.home)
            
            NavigationView {
                
            }.tabItem {
                let saveText = Text("保存", comment: "保存")
                Label {
                    saveText
                } icon: {
                    Image(systemName: "heart.fill")
                }.accessibility(label: saveText)
            }.tag(Tab.save)
            
            NavigationView {
                
            }.tabItem {
                let recipeText = Text("献立", comment: "献立")
                Label {
                    recipeText
                } icon: {
                    Image(systemName: "heart.fill")
                }.accessibility(label: recipeText)
            }.tag(Tab.recipe)
            
            NavigationView {
                
            }.tabItem {
                let profileText = Text("プロフィール", comment: "プロフィール")
                Label {
                    profileText
                } icon: {
                    Image(systemName: "heart.fill")
                }.accessibility(label: profileText)
            }.tag(Tab.profile)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
