import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFoodPortionField extends StatelessWidget {
  const NewFoodPortionField({ this.onCreate, super.key});

  final void Function(double)? onCreate;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
            width: 250,
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            width: 80,
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Qty',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            width: 80,
            child: TextField(
              decoration: const InputDecoration(
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