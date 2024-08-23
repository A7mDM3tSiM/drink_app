import 'package:flutter/material.dart';

import '../../../models/category_model.dart';

class CategoreisWidget extends StatelessWidget {
  const CategoreisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 15),
        children: List.generate(categories.length, (i) {
          return Container(
            width: 130,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(categories[i].image, height: 100, width: 100),
                Text(
                  categories[i].name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "${categories[i].mixes} mixes",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
