import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class FloatingBubbleMenuController {
  FloatingBubbleMenuController({ isOpened = false })
    : isOpenedStream = BehaviorSubject<bool>.seeded(isOpened);

  final BehaviorSubject<bool> isOpenedStream;

  void openMenu() {
    isOpenedStream.add(true);
  }

  void closeMenu() {
    isOpenedStream.add(false);
  }

  void toggleMenu() {
    isOpenedStream.last.then((value) => isOpenedStream.add(!value));
  }
}

class FloatingMenu extends StatefulWidget {
  const FloatingMenu({
    Key? key,
    required this.menuWidth,
    required this.menuHeight,
    this.controller,
    this.child,
    this.menu,
    this.onTap,
    this.onDoubleTap,
  }) : super(key: key);

  final FloatingBubbleMenuController? controller;
  final Widget? child;
  final Widget? menu;

  final double menuWidth;
  final double menuHeight;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;

  @override
  State<StatefulWidget> createState() {
    return FloatingMenuState();
  }
}

class FloatingMenuState extends State<FloatingMenu> {

  Widget? get _child => widget.child;
  Widget? get _menu => widget.menu;
  double get _height => widget.menuHeight;
  double get _width => widget.menuWidth;
  VoidCallback? get _onTap => widget.onTap;
  VoidCallback? get _onDoubleTap => widget.onDoubleTap;
  bool get _isDesktopApp => Platform.isMacOS || Platform.isLinux || Platform.isWindows;

  OverlayEntry? overlayEntry;
  final LayerLink _optionsLayerLink = LayerLink();
  late FloatingBubbleMenuController controller;

  @override
  void initState() {
    controller = widget.controller ?? FloatingBubbleMenuController();
    controller.isOpenedStream.listen((value) {
      if (value) {
        showMenu();
      } else {
        hideMenu();
      }
    });

    super.initState();
  }



  void hideMenu() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  void showMenu() {
    if (overlayEntry == null) {
      overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return CompositedTransformFollower(
            link: _optionsLayerLink,
            showWhenUnlinked: false,
            targetAnchor: const Alignment(0, 1.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _height,
                  width: _width,
                  child: _menu,
                ),
              ].whereType<Widget>().toList(),
            ),
          );
        },
      );
      Overlay.of(context, rootOverlay: false)!.insert(overlayEntry!);
    }
  }


  void toggleMenu() {
    if (overlayEntry == null){
      showMenu();
    }
     else {
      hideMenu();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          _onTap?.call();
        },
        onDoubleTap: _onDoubleTap,
        onSecondaryTap: () {
          toggleMenu();
        },
        child: CompositedTransformTarget(
          link: _optionsLayerLink,
          child: _child,
        ),
      )
    );
  }
}