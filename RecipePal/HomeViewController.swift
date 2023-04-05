//
//  HomeViewController.swift
//  RecipePal
//
//  Created by Sandeep Reddy on 2023-04-04.
//

import UIKit

class HomeViewController: UIViewController {
    let recipes = [Recipe(
        name: "Avocado Toast",
        ingredients: ["1 slice bread", "1/2 avocado, mashed", "Salt and pepper, to taste"],
        instructions: "1. Toast the bread to your desired level of crispiness.\n2. Spread the mashed avocado onto the toast.\n3. Sprinkle with salt and pepper, to taste.",
        imageUrl: UIImage(imageLiteralResourceName:"avocadoToast")
    ), Recipe(
        name: "Greek Yogurt Parfait",
        ingredients: ["1/2 cup Greek yogurt", "1/4 cup granola", "1/2 cup mixed berries"],
        instructions: "1. In a small bowl or jar, layer the Greek yogurt, granola, and mixed berries.\n2. Repeat the layering until all ingredients are used up.\n3. Serve immediately.",
        imageUrl: UIImage(imageLiteralResourceName:"yogurtParfait")
    ), Recipe(
        name: "One-Pot Pasta",
        ingredients: ["8 oz spaghetti", "1 can diced tomatoes", "2 cups water", "2 cloves garlic, minced", "1 tsp dried basil", "Salt and pepper, to taste"],
        instructions: "1. In a large pot, combine the spaghetti, diced tomatoes, water, minced garlic, and dried basil.\n2. Bring to a boil, then reduce the heat to low and let simmer for 10-12 minutes, or until the pasta is cooked through.\n3. Season with salt and pepper, to taste.\n4. Serve hot, garnished with grated Parmesan cheese, if desired.",
        imageUrl: UIImage(imageLiteralResourceName:"onePotPasta")
    ), Recipe(
        name: "Banana Smoothie",
        ingredients: ["1 ripe banana", "1/2 cup milk", "1/2 cup plain Greek yogurt", "1 tsp honey"],
        instructions: "1. In a blender, combine the banana, milk, Greek yogurt, and honey.\n2. Blend until smooth and creamy.\n3. Serve immediately.",
        imageUrl: UIImage(imageLiteralResourceName:"bananaSmoothie")
    ), Recipe(
        name: "Baked Chicken",
        ingredients: ["4 boneless, skinless chicken breasts", "2 tbsp olive oil", "1 tsp paprika", "1 tsp garlic powder", "Salt and pepper, to taste"],
        instructions: "1. Preheat the oven to 400°F.\n2. Place the chicken breasts in a baking dish and brush with olive oil.\n3. Sprinkle the paprika, garlic powder, salt, and pepper over the chicken.\n4. Bake for 20-25 minutes, or until the chicken is cooked through and no longer pink in the middle.\n5. Serve hot, garnished with fresh herbs or lemon wedges, if desired.",
        imageUrl: UIImage(imageLiteralResourceName:"bakedChicken")
    )]

    @IBOutlet weak var tableOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeName") as! RecipeTableCell
        
        cell.RecipeName.text = recipes[indexPath.row].name
             
         
         
         return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let RecipeViewController = self.storyboard?.instantiateViewController(identifier: "RecipeView") as? RecipeViewController{
            let recipe = recipes[indexPath.row]
            RecipeViewController.recipe = recipe
            self.navigationController?.pushViewController(RecipeViewController, animated: true)
        }
        
    }
    
    
}
