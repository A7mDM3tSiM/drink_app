class Drink {
  final String name;
  final String description;
  final String image;
  final double price;
  final int time;
  final int likes;
  final double rating;
  final String category;
  final String difficulty;
  final List<Ingredient> ingredients;

  Drink({
    required this.time,
    required this.likes,
    required this.rating,
    required this.category,
    required this.difficulty,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.ingredients,
  });
}

class Ingredient {
  final String name;
  final String image;
  final double quantity;

  Ingredient({
    required this.name,
    required this.image,
    required this.quantity,
  });
}

final drinks = [
  Drink(
    name: "Mojito Refresh",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisi ac aliquet ultricies, nunc nisl tincidunt nunc, id ultricies",
    category: "Cocktails",
    image: "assets/drink_5.png",
    time: 15,
    likes: 123,
    rating: 4.5,
    price: 10.0,
    difficulty: "Medium",
    ingredients: [
      Ingredient(
        name: "Lemon",
        image: "assets/lemon.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Mint",
        image: "assets/mint.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Sugar",
        image: "assets/sugar.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Juice",
        image: "assets/juice.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Soda",
        image: "assets/water.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Ice",
        image: "assets/ice.png",
        quantity: 2,
      ),
    ],
  ),
  Drink(
    name: "Black Moon",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisi ac aliquet ultricies, nunc nisl tincidunt nunc, id ultricies",
    category: "Sodas",
    image: "assets/drink_1.png",
    time: 10,
    likes: 456,
    rating: 4.2,
    price: 8.0,
    difficulty: "Easy",
    ingredients: [
      Ingredient(
        name: "Lemon",
        image: "assets/lemon.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Mint",
        image: "assets/mint.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Sugar",
        image: "assets/sugar.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Juice",
        image: "assets/juice.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Soda",
        image: "assets/water.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Ice",
        image: "assets/ice.png",
        quantity: 2,
      ),
    ],
  ),
  Drink(
    name: "Old Cocktail",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisi ac aliquet ultricies, nunc nisl tincidunt nunc, id ultricies",
    category: "Mocktails",
    image: "assets/drink_4.png",
    time: 12,
    likes: 789,
    rating: 4.8,
    price: 12.0,
    difficulty: "Hard",
    ingredients: [
      Ingredient(
        name: "Lemon",
        image: "assets/lemon.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Mint",
        image: "assets/mint.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Sugar",
        image: "assets/sugar.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Juice",
        image: "assets/juice.png",
        quantity: 2,
      ),
      Ingredient(
        name: "Soda",
        image: "assets/water.png",
        quantity: 1,
      ),
      Ingredient(
        name: "Ice",
        image: "assets/ice.png",
        quantity: 2,
      ),
    ],
  ),
];
