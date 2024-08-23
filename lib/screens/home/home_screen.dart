import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import 'components/categories_header_widget.dart';
import 'components/categories_wisget.dart';
import 'components/recent_mixes_widget.dart';
import 'components/search_widgte.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png'),
        centerTitle: true,
        leadingWidth: 45,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset(
            'assets/menu_icon.svg',
          ),
        ),
        actions: [
          Image.asset('assets/profile_image.png'),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SearchWidget(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: HeaderWidget(label: "Categories"),
          ),
          const SizedBox(height: 20),
          const CategoreisWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: HeaderWidget(label: "Recent Mixes"),
          ),
          const SizedBox(height: 20),
          FadeInRightBig(
            duration: const Duration(milliseconds: 500),
            child: const RecentMixesWidget(),
          ),
        ],
      ),
    );
  }
}
