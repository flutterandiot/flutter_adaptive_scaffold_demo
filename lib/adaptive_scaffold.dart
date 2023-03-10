import 'package:demo_adaptive_scaffold/demo_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import 'destination_items.dart';

class AdaptiveScaffoldHome extends StatelessWidget {
  const AdaptiveScaffoldHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      destinations: destinations,
      useDrawer: false,
      bodyRatio: 0.25,
      leadingExtendedNavRail: const FlutterLogo(
        size: 120,
      ),
      leadingUnextendedNavRail: const FlutterLogo(size: 32),
      trailingNavRail: const Placeholder(
        child: Center(
          child: Text('Trailing'),
        ),
      ),
      body: (_) => GridView.count(
        crossAxisCount: 2,
        children: demoItems,
      ),
      smallBody: (_) => ListView.builder(
        itemCount: demoItems.length,
        itemBuilder: (_, index) => demoItems[index],
      ),
      secondaryBody: (_) => Container(
        color: Colors.amberAccent,
        child: const Placeholder(),
      ),
      largeSecondaryBody: (_) => Container(
        color: Colors.green,
        child: const Placeholder(
          child: Center(
            child: FlutterLogo(
              size: 128,
            ),
          ),
        ),
      ),
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
    );
  }
}
