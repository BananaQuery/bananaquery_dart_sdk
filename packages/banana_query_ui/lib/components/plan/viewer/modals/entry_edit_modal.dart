// import 'package:banana_query_api/base/i_food_item.dart';
// import 'package:banana_query_api/custom/quantized_food.dart';
// import 'package:bodistics_api/plan/day/plan_entry.dart';
// import 'package:flutter/material.dart';

// import '../information/nutritional_information_view.dart';

// typedef OnFoodItemChanged = Function(NutritionalEntity);

// class EntryEditModal extends StatefulWidget {
//   const EntryEditModal({
//     Key? key,
//     required this.entry,
//     this.onEntryChanged,
//     this.onFoodItemChanged,
//     this.actions
//   }) : super(key: key);

//   final PlanEntry entry;
//   final OnEntryChanged? onEntryChanged;
//   final OnFoodItemChanged? onFoodItemChanged;
//   final Widget? actions;

//   @override
//   State<StatefulWidget> createState() {
//     return EntryEditModalState();
//   }
// }

// class EntryEditModalState extends State<EntryEditModal> with TickerProviderStateMixin {
//   PlanEntry get _entry => widget.entry;
//   OnEntryChanged? get _onEntryChanged => widget.onEntryChanged;
//   OnFoodItemChanged? get _onFoodItemChanged => widget.onFoodItemChanged;
//   Widget? get _actions => widget.actions;
//   double height = 600;
//   double width = 930;

//   late PortionedFood PortionedFood;
//   @override
//   void initState() {
//     PortionedFood = _entry.foodItem.copyWith();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           return Dialog(
//             child: Container(
//                 height: constraints.maxHeight * .95,
//                 width: constraints.maxHeight * .8,
//                 constraints: BoxConstraints(
//                     minWidth: width,
//                     maxWidth: width,
//                     minHeight: height
//                 ),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: NutritionalInformationView(
//                         entry: PortionedFood,
//                         onEntryChanged: _onEntryChanged,
//                         onFoodItemChanged: _onFoodItemChanged,
//                       ),
//                     ),
//                     // _actions ?? Container()
//                   ],
//                 )
//             ),
//           );
//         },
//       ),
//     );
//   }
// }