import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  bool isCompact = false;

  void changeCompact(SideMenuDisplayMode side) {
    if (side == SideMenuDisplayMode.open) {
      if (isCompact == true) {
        isCompact = false;
      }
    } else if (side == SideMenuDisplayMode.compact) {
      if (isCompact == false) {
        isCompact = true;
      }
    }
  }
}
