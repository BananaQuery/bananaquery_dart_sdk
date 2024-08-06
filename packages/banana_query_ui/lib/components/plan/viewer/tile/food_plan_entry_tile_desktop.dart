import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../../floating/bubble_container.dart';
import '../../../floating/floating_menu_desktop.dart';
import 'food_plan_entry_tile.dart';

class FoodPlanEntryTileDesktop extends StatefulWidget {
  const FoodPlanEntryTileDesktop({
    Key? key,
    required this.entry,
    this.hoverColor,
    this.color,
    this.borderColor = Colors.transparent,
    this.dashPattern = const [1,0],

    this.onTap,
    this.onDoubleTap,
    this.onOpen,
    this.onDelete,
    this.onFillRow,
    this.onExpandRight,
    this.onExpandLeft,
    this.onCollapseLeft,
    this.onCollapseRight,
    this.isSelected = false,

    this.titleTextStyle,
    this.subtitleTextStyle,
  }) : super(key: key);

  final PortionedFood entry;
  final bool isSelected;

  final Color borderColor;
  final Color? color;
  final Color? hoverColor;
  final List<double> dashPattern;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;


  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onOpen;
  final VoidCallback? onDelete;
  final VoidCallback? onFillRow;
  final VoidCallback? onExpandRight;
  final VoidCallback? onExpandLeft;
  final VoidCallback? onCollapseLeft;
  final VoidCallback? onCollapseRight;

  @override
  State<StatefulWidget> createState() {
    return FoodPlanEntryTileDesktopState();
  }
}

class FoodPlanEntryTileDesktopState extends State<FoodPlanEntryTileDesktop> {
  // This flag indicates whether or not the cursor is in the component
  bool _cursorInTile = false;

  PortionedFood get _entry => widget.entry;

  VoidCallback? get _onOpen => widget.onOpen;
  VoidCallback? get _onDoubleTap => widget.onDoubleTap;

  VoidCallback? get _onTap => widget.onTap;
  VoidCallback? get _onDelete => widget.onDelete;

  VoidCallback? get _onFillRow => widget.onFillRow;

  VoidCallback? get _onExpandRight => widget.onExpandRight;
  VoidCallback? get _onExpandLeft => widget.onExpandLeft;

  VoidCallback? get _onCollapseRight => widget.onCollapseRight;
  VoidCallback? get _onCollapseLeft => widget.onCollapseLeft;

  TextStyle? get _titleTextStyle => widget.titleTextStyle;
  TextStyle? get _subtitleTextStyle => widget.subtitleTextStyle;

  // ---------- STYLING PROPS
  Color get _borderColor => widget.borderColor;
  Color? get _hoverColor => widget.hoverColor;
  Color? get _color => widget.color;
  List<double> get _dashPattern => widget.dashPattern;


  @override
  Widget build(BuildContext context) {
    return DragTarget<PortionedFood>(
        builder: (context, candidateItems, rejectedItems) {
          Widget itemTile = FloatingMenuDesktop(
            menuHeight: 50,
            menuWidth: 130,
            onTap: _onTap,
            onDoubleTap: _onDoubleTap,
            menu: BubbleContainer(
              // color: const Color.fromRGBO(91, 91, 91, 1.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 5),
                    child: const Icon(Ionicons.create_outline, size: 16.0,),
                  ),
                  InkWell(
                    onTap: _onFillRow,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: const Icon(Ionicons.expand_outline, size: 16.0,),
                    ),
                  ),
                  InkWell(
                    onTap: _onExpandLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: const Icon(Ionicons.return_up_back, size: 16.0,),
                    ),
                  ),
                  InkWell(
                    onTap: _onExpandRight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: const Icon(Ionicons.return_up_forward, size: 16.0,),
                    ),
                  )
                ],
              ),
            ),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                setState(() {
                  _cursorInTile = true;
                });
              },
              onExit: (event) {
                setState(() {
                  _cursorInTile = false;
                });
              },
              child: FoodPlanEntryTile(
                color: _cursorInTile
                    ? _hoverColor
                    : _color,
                dashPattern: _dashPattern,
                borderColor: _borderColor,
                titleStyle: _titleTextStyle,
                subtitleStyle: _subtitleTextStyle,
                entry: _entry,
              ),
            ),
          );
          return LongPressDraggable<PortionedFood>(
            data: _entry,
            dragAnchorStrategy: pointerDragAnchorStrategy,
            feedback: Container(width: 200, height: 45, color: Colors.green,),
            child: itemTile,
          );
        }
    );
  }

}