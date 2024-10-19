import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'floating_menu.dart';

class FloatingMenuDesktop extends StatefulWidget {
  const FloatingMenuDesktop(
      {super.key,
      required this.menuHeight,
      required this.menuWidth,
      required this.child,
      required this.menu,
      this.onTap,
      this.onDoubleTap,
      this.controller});

  final double menuHeight;
  final double menuWidth;
  final Widget child;
  final Widget menu;

  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final FloatingBubbleMenuController? controller;

  @override
  State<StatefulWidget> createState() {
    return FloatingMenuDesktopState();
  }
}

class FloatingMenuDesktopState extends State<FloatingMenuDesktop> {
  double get menuHeight => widget.menuHeight;
  double get menuWidth => widget.menuWidth;
  Widget get child => widget.child;
  Widget get menu => widget.menu;

  VoidCallback? get _onTap => widget.onTap;
  VoidCallback? get _onDoubleTap => widget.onDoubleTap;
  final FloatingBubbleMenuController controller =
      FloatingBubbleMenuController();

  // DESKTOP Platform timers
  // In desktop platforms the menu disappears if the mouse spends more than x amount
  // of time outside of the menu or of the widget that triggers the menu.
  Timer? hideMenuTimer;

  void _startClosingTimer() {
    hideMenuTimer = Timer(const Duration(seconds: 1), () {
      controller.closeMenu();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingMenu(
      menuHeight: menuHeight,
      menuWidth: menuWidth,
      controller: controller,
      onTap: _onTap,
      onDoubleTap: _onDoubleTap,
      menu: MouseRegion(
        cursor: SystemMouseCursors.click,
        onExit: (event) {
          _startClosingTimer();
        },
        onEnter: (event) {
          hideMenuTimer?.cancel();
        },
        child: menu,
      ),
      child: MouseRegion(
        onExit: (event) {
          _startClosingTimer();
        },
        onEnter: (event) {
          hideMenuTimer?.cancel();
        },
        child: child,
      ),
    );
  }
}
