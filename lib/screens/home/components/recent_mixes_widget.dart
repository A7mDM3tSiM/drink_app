import 'package:flutter/material.dart';
import 'package:food_delivery/models/drink_model.dart';
import 'package:food_delivery/screens/drink/drink_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentMixesWidget extends StatelessWidget {
  const RecentMixesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        itemCount: drinks.length,
        itemBuilder: (_, index) {
          final drink = drinks[index];

          return GestureDetector(
            onTap: () {
              Get.to(() => DrinkScreen(drink: drink),
                  transition: Transition.topLevel);
            },
            child: CategoryWidget(
              label: drink.name.split(" ").first,
              subLabel: drink.name.split(" ").last,
              categoty: drink.category,
              image: drink.image,
              time: drink.time,
              likes: drink.likes,
              rating: drink.rating,
            ),
          );
        },
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String label;
  final String subLabel;
  final String categoty;
  final String image;
  final int time;
  final int likes;
  final double rating;

  const CategoryWidget({
    super.key,
    required this.label,
    required this.subLabel,
    required this.categoty,
    required this.image,
    required this.time,
    required this.likes,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 300,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            child: Container(
              height: 325,
              width: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            left: 30,
            child: Container(
              height: 345,
              width: 180,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 300,
              width: 250,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        label,
                        style: TextStyle(
                          height: 1,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subLabel,
                        style: TextStyle(
                          height: 1,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoty,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "$time mins",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  likes.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Easy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  rating.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              image,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
