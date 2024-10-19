import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFoodPortionField extends StatelessWidget {
  const NewFoodPortionField({this.onCreate, super.key});

  final void Function(double)? onCreate;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 250,
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Qty',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Weight',
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
