//
//  HomeView.swift
//  Recipe
//
//  Created by Aimi on 2022/05/11.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        // TODO: search
        RecipeList(recipes: [
            Recipe(id: "egg", name: "egg", isFavorited: false, image: "image"),
            Recipe(id: "egg", name: "egg", isFavorited: false, image: "image"),
            Recipe(id: "egg", name: "egg", isFavorited: false, image: "image")
        ])
        // TODO: list
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
