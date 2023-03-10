import 'package:flutter/material.dart';

final List<NavigationDestination> destinations = [
  const NavigationDestination(
    icon: Icon(Icons.dashboard_outlined),
    selectedIcon: Icon(Icons.dashboard),
    label: 'Dashboard',
  ),
  const NavigationDestination(
    icon: Icon(Icons.explore_outlined),
    selectedIcon: Icon(Icons.explore),
    label: 'Explore',
  ),
  const NavigationDestination(
    icon: Icon(Icons.settings_outlined),
    selectedIcon: Icon(Icons.settings),
    label: 'Settings',
  ),
];
