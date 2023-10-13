import 'package:flutter/material.dart';
import 'package:recipe_menu/models/item_model.dart';

import 'package:recipe_menu/ui/widgets/widgets.dart';
import 'package:recipe_menu/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final List<ItemModel> _items = [
      ItemModel(0, Icons.account_balance, 'Hoem', 'Some info'),
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
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //header
                CardHeaderHome(),
                //search bar
                SizedBox(height: 10),
                CardSearch(),
                //menu slider
                SizedBox(height: 10),

                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _items.length,
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return IconsMenuWidget(
                            title: _items[itemIndex].title,
                            icons: _items[itemIndex].icon);
                      }),
                )

                //recipe populer
              ],
            ),
          ),
        ),
      ),
    );
  }
}
