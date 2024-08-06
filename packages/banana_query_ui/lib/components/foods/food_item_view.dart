import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_ui/components/foods/vitamin_nutrient_form.dart';
import 'package:flutter/material.dart';

import '../fields/new_food_portion_field.dart';
import 'food_portions_form.dart';
import 'macro_nutrient_form.dart';
import 'minerals_nutrient_form.dart';

enum ActiveNutrientTab { macroNutrients, vitamins, minerals }

class FoodItemView extends StatefulWidget {
  const FoodItemView({ super.key,
    required this.foodItem,
    this.onNameChanged,
    this.onDescriptionChanged,
    this.onNewPortion,
  });

  final FoodItem foodItem;
  final void Function(String)? onNameChanged;
  final void Function(String)? onDescriptionChanged;
  final void Function(IFoodPortion)? onNewPortion;

  @override
  State<StatefulWidget> createState() {
    return FoodItemViewState();
  }
}

class FoodItemViewState extends State<FoodItemView> {


  FoodItem get _foodItem => widget.foodItem;
  ActiveNutrientTab _activeNutritionTab = ActiveNutrientTab.macroNutrients;
  void Function(IFoodPortion)? get _onNewPortion => widget.onNewPortion;

  Widget getActiveNutritionTab() {
    if (_activeNutritionTab == ActiveNutrientTab.macroNutrients) {
      return MacroNutrientForm();
    }
    if (_activeNutritionTab == ActiveNutrientTab.minerals) {
      return MineralsNutrientForm();
    }
    return VitaminNutrientForm();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: TextField(
                onChanged: widget.onNameChanged,
                decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              Expanded(
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                            hintText: 'Please select expense',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                        isEmpty: false,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: "1",
                            isDense: true,
                            onChanged: (String? newValue) {
                            },
                            items: ["1", "2"].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
              )
            ],
          ),
          FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Please select expense',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                isEmpty: false,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: "1",
                    isDense: true,
                    onChanged: (String? newValue) {
                    },
                    items: ["1", "2"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
          TextField(
            onChanged: widget.onDescriptionChanged,
            decoration: const InputDecoration(
              labelText: 'Description',
            ),
          ),
          Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                          key: const Key('tab_bar'),
                          tabs: [
                            Tab(text: 'Nutrients'),
                            Tab(text: 'Portions'),
                          ]
                      ),
                      Expanded(
                          child: TabBarView(
                              children: [
                                Container(
                                  key: const Key('tab_1'),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: SegmentedButton<ActiveNutrientTab>(
                                          selected: {_activeNutritionTab},
                                          key: const Key('segmented_button'),
                                          onSelectionChanged: (Set<ActiveNutrientTab> selection) {
                                            setState(() {
                                              _activeNutritionTab = selection.first;
                                            });
                                          },
                                          segments: [
                                            ButtonSegment<ActiveNutrientTab>(
                                              label: Text('Macro Nutrients'),
                                              value: ActiveNutrientTab.macroNutrients,

                                            ),
                                            ButtonSegment<ActiveNutrientTab>(
                                                label: Text('Vitamins'),
                                                value: ActiveNutrientTab.vitamins
                                            ),
                                            ButtonSegment<ActiveNutrientTab>(
                                                label: Text('Minerals'),
                                                value: ActiveNutrientTab.minerals
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: getActiveNutritionTab()
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  key: const Key('tab_2'),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15, top: 15, left: 15, right: 15),
                                        child: Text("Food Portions", style: Theme.of(context).textTheme.titleMedium),
                                      ),
                                      Row(
                                        children: [

                                          Expanded(
                                              child: Container(
                                                height: 55,
                                                color: Colors.grey[200],
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 500,
                                                      child: NewFoodPortionField(),
                                                    ),
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          // _onNewPortion!(FoodPortion());
                                                        },
                                                        child: Text("New Portion")
                                                    ),
                                                  ],
                                                )
                                              ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                       child: FoodPortionForm(
                                         portions: _foodItem.portions,
                                       ),
                                      )
                                    ],
                                  )
                                )
                              ]
                          )
                      )
                    ],
                  )
              )
          )
        ],
      ),
    );
  }
}
