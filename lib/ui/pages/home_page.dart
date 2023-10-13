import 'package:flutter/material.dart';
import 'package:recipe_menu/models/item_model.dart';

import 'package:recipe_menu/ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final List<ItemModel> items = [
      ItemModel(0, Icons.account_balance, 'Home', 'Some info'),
      ItemModel(1, Icons.account_balance_wallet, 'Wallet', 'Some info'),
      ItemModel(2, Icons.alarm, 'Alarm', 'Some info'),
      ItemModel(3, Icons.my_location, 'My location', 'Some info'),
      ItemModel(4, Icons.laptop, 'Laptop', 'Some info'),
      ItemModel(5, Icons.backup, 'Backup', 'Some info'),
      ItemModel(6, Icons.settings, 'Settings', 'Some info'),
      ItemModel(7, Icons.call, 'Call', 'Some info'),
      ItemModel(8, Icons.restore, 'Restore', 'Some info'),
      ItemModel(9, Icons.camera_alt, 'Camera', 'Some info'),
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              const CardHeaderHome(),
              //search bar
              const SizedBox(height: 10),
              const CardSearch(),
              //menu slider
              const SizedBox(height: 10),

              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int itemIndex) {
                      return IconsMenuWidget(
                          title: items[itemIndex].title,
                          icons: items[itemIndex].icon);
                    }),
              ),

              //recipe populer
              const CardPopulerWidget()
            ],
          ),
        ),
      ),
    );
  }
}
