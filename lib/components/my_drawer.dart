import 'package:flutter/material.dart';
import 'package:food_del/components/my_drawer_tile.dart';

import '../pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Icon(
              Icons.lock_open_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              thickness: 4,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //home button
          MyDrawerTile(
              title: 'H O M E',
              onTap: ()=>Navigator.pop(context),
              icon: Icons.home),
          //setting button
          MyDrawerTile(
              title: 'S E T T I N G S', onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()));
          }, icon: Icons.settings),
          const Spacer(),
          //logout button
          MyDrawerTile(title: 'L O G O U T', onTap: () {}, icon: Icons.logout),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
