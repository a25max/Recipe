//
//  RecipeList.swift
//  Recipe
//
//  Created by Aimi on 2022/05/11.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
    var body: some View {
        // add header title and more button
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(recipes) { recipe in
                            RecipeView(recipe: recipe)
                        }
                    }
                }
            }
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: [Recipe(id: "egg", name: "egg", isFavorited: false, image: "image")])
    }
}
