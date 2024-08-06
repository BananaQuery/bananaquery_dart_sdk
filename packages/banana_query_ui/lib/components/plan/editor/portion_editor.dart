import 'package:banana_query_core/portions/food_portion.dart';
import 'package:banana_query_core/portions/i_food_portion.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PortionsEditor extends StatefulWidget {
  const PortionsEditor({
    super.key,
    required this.title,
    this.portion,
  });

  final String title;
  final IFoodPortion? portion;

  @override
  State<StatefulWidget> createState() {
    return PortionsEditorState();
  }
}

class PortionDraft {
  String? title;
  num? gramWeight;
}

class PortionsEditorState extends State<PortionsEditor> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  IFoodPortion? get _portion => widget.portion;
  String get title => widget.title;

  String portionName = "";
  num portionWeight = 0.0;

  @override
  void initState() {
    if (_portion != null) {
      portionName = _portion!.title;
      portionWeight = _portion!.gramWeight;
    }

    super.initState();
  }

  String? validatePortionName(value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterAPortionName;
    }
    return null;
  }

  String? validatePortionWeight(value) {
    if (value == null || value.isEmpty) {
      return S.of(context).invalidWeight;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleLarge!;

    return Form(
        key: formKey,
        child: Container(
            height: 200,
            width: 500,
            key: UniqueKey(),
            margin: EdgeInsets.only(bottom: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 25.0, top: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        // TODO: Change icon
                        Icons.question_mark,
                        size: 24,
                      ),
                      Padding(padding: EdgeInsets.only(left: 15.0)),
                      SelectableText(
                        title,
                        style: titleStyle,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25.0, top: 35.0)),
                    Container(
                      width: 120,
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        validator: validatePortionWeight,
                        initialValue: portionWeight.toStringAsFixed(2),
                        inputFormatters: [
                          // This formatter allows only one decimal point
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d*\.?\d*')),
                        ],
                        decoration: InputDecoration(
                          labelText: S.of(context).gramWeight,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "e.g: 85",
                          // hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.6)),
                          border: OutlineInputBorder(),
                          errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          isDense: true,
                        ),
                        onChanged: (newValue) {
                          portionWeight = double.parse(newValue);
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15.0)),
                    Expanded(
                      child: TextFormField(
                        validator: validatePortionName,
                        initialValue: portionName,
                        decoration: InputDecoration(
                          labelText: S.of(context).portionName,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: S.of(context).portionNameHint,
                          border: OutlineInputBorder(),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          errorMaxLines: 1,
                          isDense: true,
                        ),
                        onChanged: (newValue) {
                          portionName = newValue;
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 35.0)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 10.0, left: 30, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(S.of(context).cancelButtonText)),
                      Padding(padding: EdgeInsets.only(left: 15.0)),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                setState(() {
                                  Navigator.of(context).pop(FoodPortion(
                                      foodId: _portion?.foodId ?? -1,
                                      title: portionName,
                                      gramWeight: portionWeight));
                                });
                              }
                            },
                            child: Text(
                              S.of(context).saveButtonText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
