import 'package:demo_adaptive_scaffold/demo_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import 'destination_items.dart';

class AdaptiveLayoutHome extends StatelessWidget {
  const AdaptiveLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        primaryNavigation: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.medium: SlotLayout.from(
              key: const Key('Prim navi medium'),
              builder: (_) => AdaptiveScaffold.standardNavigationRail(
                destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                leading: const FlutterLogo(
                  size: 24,
                ),
              ),
            ), // medium
            Breakpoints.large: SlotLayout.from(
              key: const Key('Prim navi medium'),
              builder: (_) => AdaptiveScaffold.standardNavigationRail(
                extended: true,
                destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                leading: const FlutterLogo(
                  size: 65,
                ),
              ),
            ), // large
          },
        ),
        body: SlotLayout(
          config: {
            Breakpoints.small: SlotLayout.from(
              key: const Key('Small Body'),
              builder: (_) => ListView.builder(
                itemCount: demoItems.length,
                itemBuilder: (_, index) => demoItems[index],
              ),
            ),
            Breakpoints.mediumAndUp: SlotLayout.from(
              key: const Key('Medium and up body'),
              builder: (_) => GridView.count(
                crossAxisCount: 2,
                children: demoItems,
              ),
            ),
          },
        ),
        secondaryBody: SlotLayout(
          config: <Breakpoint, SlotLayoutConfig>{
            Breakpoints.mediumAndUp: SlotLayout.from(
              key: const Key('Second Body medium Desktop'),
              builder: (_) => Container(
                color: Colors.red,
                child: const Placeholder(
                  child: Center(
                    child: Text('Second body on medium Desktop'),
                  ),
                ),
              ),
            ),
          },
        ), // Second body
        bottomNavigation: SlotLayout(
          config: {
            Breakpoints.small: SlotLayout.from(
              key: const Key('Small bottom navi'),
              builder: (_) => BottomNavigationBarTheme(
                data: const BottomNavigationBarThemeData(
                  backgroundColor: Colors.white,
                ),
                child: AdaptiveScaffold.standardBottomNavigationBar(destinations: destinations),
              ),
            ),
          },
        ),
        topNavigation: SlotLayout(
          config: {
            Breakpoints.small: SlotLayout.from(
              key: const Key('Top Navi Small'),
              builder: (_) => Container(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        //TODO -  add action
                        // if (Scaffold.hasDrawer(context)) {
                        //   Scaffold.of(context).openDrawer();
                        // }

                        // _scaffoldKey.currentState!.openDrawer();
                      },
                      child: const Icon(Icons.menu_open),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Breakpoints.mediumAndUp: SlotLayout.from(
              key: const Key('Top navi medium and up'),
              builder: (_) => Container(
                height: 60,
                padding: const EdgeInsets.only(left: 32, right: 48),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        //TODO - add action
                      },
                      child: const FlutterLogo(),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        //TODO - add action
                      },
                      child: const Text('Home'),
                    ),
                    TextButton(
                      onPressed: () {
                        //TODO - add action
                      },
                      child: const Text('Blog'),
                    ),
                    TextButton(
                      onPressed: () {
                        //TODO - add action
                      },
                      child: const Text('About'),
                    ),
                  ],
                ),
              ),
            ),
          },
        ),
      ),
    );
  }
}
