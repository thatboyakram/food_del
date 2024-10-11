import 'package:flutter/material.dart';
import 'package:food_del/components/description.dart';
import 'package:food_del/components/my_current_location.dart';
import 'package:food_del/components/my_drawer.dart';
import 'package:food_del/components/my_tab_bar.dart';

import '../components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
                    MySliverAppBar(
                        title: MyTabBar(tabController: _tabController),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Divider(
                              indent: 25,
                              endIndent: 25,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            //my current location
                            const MyCurrentLocation(),
                            //description box
                            const Description()
                          ],
                        ))
                  ],
          body: TabBarView(
            controller: _tabController,
              children: [
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const Text('Hello')),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const Text('this is food')),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const Text('this is vegetables'))
          ])),
    );
  }
}
