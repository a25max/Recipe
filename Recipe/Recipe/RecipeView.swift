//
//  RecipeView.swift
//  Recipe
//
//  Created by Aimi on 2022/05/11.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(spacing: 0) {
            Image("egg").resizable().frame(width: 300, height: 300)
            Text(recipe.name)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe(id: "", name: "", isFavorited: false, image: ""))
    }
}
