import 'package:flutter/material.dart';
import 'package:recipe_menu/ui/widgets/widgets.dart';
import 'package:recipe_menu/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //header
                CardHeaderHome()
                //search bar
                //menu slider
                //recipe populer
              ],
            ),
          ),
        ),
      ),
    );
  }
}
