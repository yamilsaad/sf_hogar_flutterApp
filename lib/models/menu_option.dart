import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget scree;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.scree});
}
