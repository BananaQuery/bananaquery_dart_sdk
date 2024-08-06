import 'package:flutter/material.dart';

class NutrientField extends StatelessWidget {
  const NutrientField({ required this.name, required this.units, this.onChange, super.key});

  final String name;
  final String units;
  final void Function(double)? onChange;


  @override
  Widget build(BuildContext context) {
    Color unitBackground = Theme.of(context).colorScheme.surface;

    return TextField(
      onChanged: (value) {
        if (onChange != null) {
          onChange!(double.parse(value));
        }
      },
      decoration: InputDecoration(
        label: Text(name),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: '?',
        suffixIcon: Container(
          width: 50,
          alignment: Alignment.center,
          child: Text(units)
        )
      ),
    );
  }
}