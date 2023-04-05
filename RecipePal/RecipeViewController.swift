//
//  RecipeViewController.swift
//  RecipePal
//
//  Created by Sandeep Reddy on 2023-04-04.
//

import UIKit

class RecipeViewController: UIViewController {
    var recipe: Recipe?
    
    @IBOutlet weak var RecipeImage: UIImageView!
    @IBOutlet weak var recipeDescription: UITextView!
    @IBOutlet weak var RecipeTitle: UILabel!
    init(recipe: Recipe) {
            self.recipe = recipe
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.RecipeTitle.text = recipe?.name
        let ingredients = "Ingredients: \n" + recipe!.ingredients.joined(separator: "\n")
        let Directions = "Directions: \n" + recipe!.instructions
        self.recipeDescription.text =  ingredients + "\n" + Directions
        self.RecipeImage.image = recipe!.imageUrl
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
