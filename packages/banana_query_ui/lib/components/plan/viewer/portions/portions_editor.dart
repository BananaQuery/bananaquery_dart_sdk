import 'package:banana_query_core/portions/food_portion.dart';
import 'package:flutter/material.dart';

class PortionsEditor extends StatefulWidget {
  const PortionsEditor({
    super.key,
    this.portion,
  });

  final FoodPortion? portion;

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

  FoodPortion? get _portion => widget.portion;

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
      return "Please enter a name por the portion";
    }
    return null;
  }

  String? validatePortionWeight(value) {
    if (value == null || value.isEmpty) {
      return "invalid weight";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Container(
            height: 200,
            width: 500,
            key: UniqueKey(),
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 35.0)),
                    Container(
                      width: 120,
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        validator: validatePortionWeight,
                        initialValue: portionWeight.toStringAsFixed(2),
                        decoration: const InputDecoration(
                          labelText: "Gram Weight",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "e.g: 85",
                          // hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white.withOpacity(.6)),
                          border: InputBorder.none,
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          isDense: true,
                        ),
                        onChanged: (newValue) {
                          portionWeight = double.parse(newValue);
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      padding: const EdgeInsets.only(right: 10.0),
                      child: TextFormField(
                        validator: validatePortionName,
                        initialValue: portionName,
                        decoration: const InputDecoration(
                          labelText: "Portion Name",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "e.g: big cup",
                          border: InputBorder.none,
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          errorMaxLines: 1,
                          isDense: true,
                        ),
                        onChanged: (newValue) {
                          portionName = newValue;
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, left: 30, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                              'Save',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            )),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 15.0)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'))
                    ],
                  ),
                )
              ],
            )));
  }
}
