import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../models/drink_model.dart';

class DrinkScreen extends StatelessWidget {
  final Drink drink;
  const DrinkScreen({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(drink.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Stack(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 2000),
            child: Image.asset("assets/background.png"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Text(drink.description),
              ),
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 50),
                          const Text(
                            "Time",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${drink.time} mins",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Difficulty",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 38, 199, 124),
                            ),
                          ),
                          Text(
                            drink.difficulty,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 38, 199, 124),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 148, 38),
                            ),
                          ),
                          const Text(
                            "Sweet",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 148, 38),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Serves",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 100, 38),
                            ),
                          ),
                          Text(
                            drink.price.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 100, 38),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients  >",
                      style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeInDown(
                        child: IngrediantsWidget(
                            ingredients: drink.ingredients.sublist(0, 3))),
                    const SizedBox(height: 5),
                    BounceInUp(
                        child: IngrediantsWidget(
                            ingredients: drink.ingredients.sublist(3))),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 100,
            right: -110,
            child: FadeInRightBig(
              duration: const Duration(milliseconds: 500),
              delay: const Duration(milliseconds: 1000),
              child: Image.asset(
                drink.image,
                fit: BoxFit.cover,
                height: 350,
                width: 350,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IngrediantsWidget extends StatelessWidget {
  const IngrediantsWidget({
    super.key,
    required this.ingredients,
  });

  final List<Ingredient> ingredients;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final ingredient = ingredients[index];
          return Container(
            height: 110,
            width: 110,
            margin: const EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ingredient.image,
                  height: 50,
                  width: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ingredient.quantity.toInt().toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      ingredient.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
