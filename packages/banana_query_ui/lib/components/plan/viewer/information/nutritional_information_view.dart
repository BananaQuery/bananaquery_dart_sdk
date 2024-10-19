import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/nutrients/micro/minerals/mineral.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/vitamin.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:flutter/material.dart';

import '../../../cards/bod_stats_card.dart';
import '../portions/portion_field.dart';
import '../portions/portions_editor.dart';
import 'micro_nutrient_information.dart';

typedef OnEntryChanged = Function(PortionedFood);
typedef OnFoodItemChanged = Function(NutritionalEntity);

class NutritionalInformationView extends StatefulWidget {
  const NutritionalInformationView(
      {super.key,
      required this.entry,
      this.onEntryChanged,
      this.onFoodItemChanged});

  final PortionedFood entry;
  final OnEntryChanged? onEntryChanged;
  final OnFoodItemChanged? onFoodItemChanged;

  @override
  State<StatefulWidget> createState() {
    return NutritionalInformationViewState();
  }
}

class NutritionalInformationViewState
    extends State<NutritionalInformationView> {
  PortionedFood get _initialEntry => widget.entry;
  OnEntryChanged? get _onEntryChanged => widget.onEntryChanged;
  OnFoodItemChanged? get _onFoodItemChanged => widget.onFoodItemChanged;

  late PortionedFood _entry;
  bool get isFoodItemEditable => _onFoodItemChanged != null;
  bool get isFoodPortionEditable => _onEntryChanged != null;

  // A flag that tells you if there has been changes made to the entry
  bool changedMade = false;
  MacroTotals? macroTotals;

  final _portionsForm = GlobalKey<FormState>();
  final _nutrientsForm = GlobalKey<FormState>();
  final List<PortionDraft> drafts = [];

  @override
  void initState() {
    _entry = _initialEntry;

    macroTotals = NutrientTotalsCalculator.getMacros([_entry]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  width: 860,
                  child: TextFormField(
                    initialValue: _entry.item.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          Expanded(
              child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      //
                      body: Column(
                        children: [
                          const TabBar(
                            padding: EdgeInsets.only(
                                bottom: 15.0, top: 15.0, left: 20.0),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Nutritional info",
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                              Tab(
                                  child: Text("Portions",
                                      style: TextStyle(color: Colors.black87))),
                            ],
                          ),
                          Expanded(
                              child: TabBarView(children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 0.0, top: 15.0, left: 20.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 300,
                                            child: PortionField(
                                              entry: _entry,
                                              onChanged: (newEntry) {
                                                setState(() {
                                                  _entry = newEntry;
                                                  _onEntryChanged
                                                      ?.call(newEntry);
                                                });
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                          height: 120,
                                          width: 170,
                                          child: BodStatsCard(
                                              value: macroTotals
                                                      ?.kilocalories.amount
                                                      .toStringAsFixed(2) ??
                                                  "?",
                                              color: Colors.white,
                                              subtitle: 'Energy',
                                              units: '',
                                              child: SizedBox(
                                                width: 100,
                                                child: TextFormField(
                                                  enabled: isFoodItemEditable,
                                                  initialValue: macroTotals
                                                      ?.kilocalories.amount
                                                      .toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(fontSize: 28.0),
                                                  decoration: InputDecoration(
                                                    suffixText: macroTotals!
                                                        .kilocalories.units,
                                                    isDense: true,
                                                    suffixStyle:
                                                        Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium!
                                                            .copyWith(
                                                                fontSize: 24),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ))),
                                      SizedBox(
                                          height: 120,
                                          width: 150,
                                          child: BodStatsCard(
                                            value: macroTotals?.carbs.amount
                                                    .toStringAsFixed(2) ??
                                                "?",
                                            color: Colors.white,
                                            subtitle: 'Carbohydrates',
                                            units: '',
                                            child: SizedBox(
                                              width: 80,
                                              child: TextFormField(
                                                enabled: isFoodItemEditable,
                                                initialValue: macroTotals
                                                    ?.carbs.amount
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(fontSize: 28.0),
                                                decoration: InputDecoration(
                                                  suffixText:
                                                      macroTotals!.carbs.units,
                                                  isDense: true,
                                                  suffixStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                          height: 120,
                                          width: 150,
                                          child: BodStatsCard(
                                            value: macroTotals?.proteins.amount
                                                    .toStringAsFixed(2) ??
                                                "?",
                                            color: Colors.white,
                                            subtitle: 'Proteins',
                                            units: '',
                                            child: SizedBox(
                                              width: 80,
                                              child: TextFormField(
                                                enabled: isFoodItemEditable,
                                                initialValue: macroTotals
                                                    ?.proteins.amount
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(fontSize: 28.0),
                                                decoration: InputDecoration(
                                                  suffixText: macroTotals!
                                                      .proteins.units,
                                                  isDense: true,
                                                  suffixStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                          height: 120,
                                          width: 150,
                                          child: BodStatsCard(
                                            value: macroTotals?.fats.amount
                                                    .toStringAsFixed(2) ??
                                                "?",
                                            color: Colors.white,
                                            subtitle: 'Fats',
                                            units: '',
                                            child: SizedBox(
                                              width: 80,
                                              child: TextFormField(
                                                enabled: isFoodItemEditable,
                                                initialValue: macroTotals
                                                    ?.fats.amount
                                                    .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(fontSize: 28.0),
                                                decoration: InputDecoration(
                                                  suffixText:
                                                      macroTotals!.fats.units,
                                                  isDense: true,
                                                  suffixStyle: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(fontSize: 24),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                  const Divider(),
                                  Expanded(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        // Text("Micronutrients"),
                                        Wrap(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 40, bottom: 0),
                                              child: NutrientTable(
                                                  title: "Mineral",
                                                  values:
                                                      NutrientTotalsCalculator
                                                          .getNutrientTotals<
                                                                  Mineral>(
                                                              [_entry]),
                                                  editable: isFoodItemEditable),
                                            ),
                                            NutrientTable(
                                                title: "Vitamin",
                                                values: NutrientTotalsCalculator
                                                    .getNutrientTotals<Vitamin>(
                                                        [_entry]),
                                                editable: isFoodItemEditable),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Form(
                            //   key: _portionsForm,
                            //   child: PortionsEditor(
                            //     portions: _entry.item.portions,
                            //     editable: isFoodItemEditable,
                            //     drafts: drafts,
                            //     portion: null,
                            //   ),
                            // )
                          ]))
                        ],
                      )))),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isFoodItemEditable || isFoodPortionEditable)
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_portionsForm.currentState?.validate() ?? false) {}
                      },
                      child: const Text('SAVE')),
                )
            ],
          )
        ],
      ),
    );
  }
}
