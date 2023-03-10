import 'package:flutter/material.dart';

final List<Widget> demoItems = List.generate(
  10,
  (index) => Container(
    padding: const EdgeInsets.all(8),
    color: Colors.amber,
    height: 400,
    child: Placeholder(
      child: Center(
        child: Text('Item #$index'),
      ),
    ),
  ),
);
