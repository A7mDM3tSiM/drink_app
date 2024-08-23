class Category {
  final String name;
  final String image;
  final int mixes;

  Category({required this.name, required this.image, required this.mixes});
}

final categories = [
  Category(name: "Cocktails", image: "assets/drink_1.png", mixes: 50),
  Category(name: "Sodas", image: "assets/drink_3.png", mixes: 65),
  Category(name: "Mocktails", image: "assets/drink_2.png", mixes: 20),
];
