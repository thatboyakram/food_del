import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text("Moonlight Diner"),
      expandedHeight: 340,
      collapsedHeight: 100,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
      ),
    );
  }
}
