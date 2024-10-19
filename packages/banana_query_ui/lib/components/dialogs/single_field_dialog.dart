import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class SingleFieldDialog extends StatelessWidget {
  SingleFieldDialog({
    super.key,
    required this.title,
    required this.initialValue,
    required this.fieldLabel,
  });

  final Widget title;
  final String initialValue;
  final String fieldLabel;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String name = initialValue;
    return SimpleDialog(
      titlePadding: EdgeInsets.zero,
      title: title,
      contentPadding:
          const EdgeInsets.only(left: 35.0, right: 25, top: 10.0, bottom: 20.0),
      children: [
        Container(
            width: 400,
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                autofocus: true,
                initialValue: initialValue,
                onFieldSubmitted: (newName) {
                  name = newName;
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pop(name);
                  }
                },
                onChanged: (newName) {
                  name = newName;
                },
                decoration: InputDecoration(
                    labelText: fieldLabel, border: const OutlineInputBorder()),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(S.of(context).cancelButtonText),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pop(name);
                  }
                },
                child: Container(
                    height: 40,
                    width: 120,
                    alignment: Alignment.center,
                    child: Text(S.of(context).saveButtonText,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary))))
          ],
        )
      ],
    );
  }
}
