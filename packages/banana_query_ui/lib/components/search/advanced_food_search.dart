import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:banana_query_core/foods/item/animal/animal_product.dart';
import 'package:banana_query_core/foods/item/dairy/dairy_product.dart';
import 'package:banana_query_core/foods/item/fruits/fruit_product.dart';
import 'package:banana_query_core/foods/item/grains/breakfast_cereal_product.dart';
import 'package:banana_query_core/foods/item/grains/cereal_grain_or_pasta.dart';
import 'package:banana_query_core/foods/item/grains/grain_product.dart';
import 'package:banana_query_core/foods/item/legumes/legume_product.dart';
import 'package:banana_query_core/foods/item/protein/eggs/egg_food_item.dart';
import 'package:banana_query_core/foods/item/protein/meat/meat_product.dart';
import 'package:banana_query_core/foods/item/protein/nuts/nut_or_seed_product.dart';
import 'package:banana_query_core/foods/item/protein/protein_product.dart';
import 'package:banana_query_core/foods/item/vegetables/vegetable_product.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:banana_query_ui/components/foods/lists/food_item_tile.dart';
import 'package:banana_query_ui/components/search%20copy/field/food_search_field.dart';
import 'package:flutter/material.dart';

import '../containers/secondary_container.dart';

typedef ItemCallback = Function(PortionedFood, FoodDatabaseInfo);

class AdvancedFoodSearch extends StatefulWidget {
  const AdvancedFoodSearch({
    super.key,
    required this.database,
    this.onSelect,
    this.onOpenItem,
    this.actions,
  });

  final ItemCallback? onSelect;
  final ItemCallback? onOpenItem;
  final List<Widget>? actions;
  final BananaQueryDatabase database;

  @override
  State<StatefulWidget> createState() {
    return AdvancedFoodSearchState();
  }
}

class AdvancedFoodSearchState extends State<AdvancedFoodSearch> {
  BananaQueryDatabase get database => widget.database;
  ItemCallback? get onSelect => widget.onSelect;
  ItemCallback? get onOpenItem => widget.onOpenItem;
  List<Widget>? get _actions => widget.actions;

  FocusScopeNode node = FocusScopeNode();
  TextEditingController searchFieldController = TextEditingController();

  late Future loadingFuture;
  List<NutritionalEntity> searchResults = [];
  PortionedFood? selectedItem;

  Set<String> categories = {};
  double cardSize = 120;
  double iconSize = 34;

  List<Type> enabledCategories = [
    AnimalProduct,
    ProteinProduct,
    EggProduct,
    MeatProduct,
    NutOrSeedProduct,
    FruitProduct,
    VegetableProduct,
    LegumeProduct,
    GrainProduct,
    BreakfastCerealProduct,
    CerealGrainOrPasta,
    DairyProduct
  ];

  Map<Type, String> types = {
    AnimalProduct: "Animal Product",
    ProteinProduct: "Protein",
    EggProduct: "Eggs",
    MeatProduct: "Meat",
    NutOrSeedProduct: "Nuts and Seeds",
    FruitProduct: "Fruits",
    VegetableProduct: "Vegetables",
    LegumeProduct: "Legumes",
    GrainProduct: "Grains",
    BreakfastCerealProduct: "Breakfast Cereals",
    CerealGrainOrPasta: "Cereal or Pasta",
    DairyProduct: "Dairy",
  };

  Map<Type, List<Type>> subCategories = {
    ProteinProduct: [EggProduct, MeatProduct, NutOrSeedProduct],
    FruitProduct: [],
    VegetableProduct: [],
    LegumeProduct: [],
    DairyProduct: [],
    GrainProduct: [BreakfastCerealProduct, CerealGrainOrPasta],
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SecondaryContainer(
        child: StreamBuilder(
            stream: database.listenToFoodItemChanges(),
            builder: (context, snapshot) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      NutritionalEntity item = FoodItem.empty();
                      PortionedFood serving = PortionedFood(
                          item: item,
                          quantity: 1,
                          portion: item.portions.first);
                      // TabService().openTab(FoodItemTab(
                      //     state: serving.item,
                      //     portion: serving.portion,
                      //     portionQuantity: serving.quantity,
                      //     db: db.info, isSaved: false));
                    },
                    child: Text(S.of(context).addButtonText),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Column(
                        //   children: [
                        //     AnimatedContainer(
                        //         key: ValueKey('all-foods'),
                        //         width: 250,
                        //         height: cardSize - 10,
                        //         duration: Duration(milliseconds: 300),
                        //         margin: EdgeInsets.only(
                        //             top: 5.0
                        //         ),
                        //         child: Container(
                        //
                        //           margin: EdgeInsets.zero,
                        //           decoration: BoxDecoration(
                        //             color: Theme.of(context).colorScheme.tertiary,
                        //             borderRadius: BorderRadius.only(
                        //               topLeft: Radius.circular(15.0),
                        //               topRight: Radius.circular(15.0),
                        //             ),
                        //           ),
                        //           child: Column(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               Icon(Ionicons.code_working, size: iconSize, color: Theme.of(context).colorScheme.primary,),
                        //               Padding(padding: EdgeInsets.only(bottom: 10),),
                        //               Text('All Items', style: TextStyle(color: Colors.white),)
                        //             ],
                        //           ),
                        //         )
                        //     ),
                        //     Expanded(
                        //       child: Container(
                        //         width: 250,
                        //         color: Theme.of(context).colorScheme.surface,
                        //         child: ListView(
                        //           children: subCategories.keys.map((e) {
                        //             if (subCategories[e]!.isEmpty) {
                        //               return CheckboxListTile(
                        //                 value: enabledCategories.contains(e),
                        //                 onChanged: (newValue) {
                        //                   setState(() {
                        //                     if (newValue == true) {
                        //                       enabledCategories.add(e);
                        //                     } else {
                        //                       enabledCategories.remove(e);
                        //                     }
                        //                   });
                        //                 },
                        //                 title: Text(types[e]!),
                        //               );
                        //             }
                        //             return ExpansionTile(
                        //                 initiallyExpanded: true,
                        //                 title: Text(types[e]!),
                        //                 childrenPadding: const EdgeInsets.only(left: 20),
                        //                 children:
                        //                 subCategories[e]!.map((e) => CheckboxListTile(
                        //                   value: true,
                        //                   onChanged: (value) {},
                        //                   title: Text(types[e]!),
                        //                 )).toList()
                        //             );
                        //           }).toList(),
                        //         ),
                        //         // child:
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Wrap(
                              //   alignment: WrapAlignment.center,
                              //   children: [
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('hearty-foods'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.heart, size: iconSize,),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('Hearty Foods')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('low-carb'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.flash, size: iconSize,),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('Low Carb')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('high-anti-oxidants'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.wine, size: iconSize),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('High Antioxidants')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('high-protein'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.barbell, size: iconSize),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('High Protein')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('low-fat'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.water, size: iconSize),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('Low Fat')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //     TextButton(
                              //       onPressed: () {},
                              //       child: AnimatedContainer(
                              //           key: ValueKey('gluten-free'),
                              //           width: cardSize,
                              //           height: cardSize,
                              //           duration: Duration(milliseconds: 300),
                              //           child: Card(
                              //             color: Theme.of(context).colorScheme.tertiary,
                              //             child: Column(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               children: [
                              //                 Icon(Ionicons.medical, size: iconSize),
                              //                 Padding(padding: EdgeInsets.only(bottom: 10),),
                              //                 Text('Gluten Free')
                              //               ],
                              //             ),
                              //           )
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              Container(
                                width: 800,
                                height: 55,
                                // padding: EdgeInsets.only(left: 15.0),
                                margin: const EdgeInsets.only(top: 15.0),
                                child: FoodSearchField(
                                  controller: searchFieldController,
                                  autofocus: true,
                                  searcher: database.searchFoodItems,
                                  onChange: () {},
                                  onResults: (List<NutritionalEntity> results) {
                                    setState(() {
                                      searchResults = results;
                                    });
                                  },
                                ),
                              ),
                              if (searchFieldController.value.text.isNotEmpty)
                                Expanded(
                                    child: SizedBox(
                                  child: searchResults.isEmpty
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Center(
                                                child: Container(
                                              height: 400,
                                              width: 400,
                                              padding: const EdgeInsets.all(40),
                                              decoration: const BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              400))),
                                              child: Container(
                                                color: Colors.red,
                                              ),
                                            )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0),
                                              child: Text(
                                                S
                                                    .of(context)
                                                    .noFoodItemsMatchingQuery(
                                                        searchFieldController
                                                            .value.text),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        fontStyle:
                                                            FontStyle.italic),
                                              ),
                                            )
                                          ],
                                        )
                                      : ListView(
                                          // shrinkWrap: true
                                          padding: const EdgeInsets.only(
                                              left: 15.0, top: 35.0),
                                          children: searchResults
                                              .map((e) => FoodItemTile(
                                                    key: ValueKey(e.id),
                                                    foodItem: e,
                                                  ))
                                              .toList(),
                                        ),
                                )),
                              if (searchFieldController.value.text.isEmpty)
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      S
                                          .of(context)
                                          .itemSearchComponentStartTypingToSearch,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w100,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white60),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: _actions ?? [],
                  )
                ],
              );
            }));
  }
}
