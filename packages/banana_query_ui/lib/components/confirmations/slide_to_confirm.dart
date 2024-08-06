import 'package:action_slider/action_slider.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class _SlideToConfirm extends StatelessWidget {
  const _SlideToConfirm(
      {required this.onConfirm, required this.title, required this.message});

  final VoidCallback onConfirm;
  final Widget title;
  final Widget message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 220,
        child: AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Ionicons.close))),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: title,
                )
              ],
            ),
            content: SizedBox(
              height: 150,
              width: 450,
              child: Center(
                  child: Column(
                children: [
                  message,
                  Spacer(),
                  SizedBox(
                    width: 300,
                    height: 65,
                    child: ActionSlider.standard(
                      action: (controller) {
                        onConfirm.call();
                      },
                      // TODO: Update icon
                      icon: Icon(Icons.question_mark),
                      child: Text(S.of(context).slideAvocadoToConfirm),
                    ),
                  ),
                  Spacer(),
                ],
              )),
            )));
  }
}

Future<bool?> slideToConfirm(
    BuildContext context, Widget title, Widget message) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return _SlideToConfirm(
            title: title,
            message: message,
            onConfirm: () {
              Navigator.of(context).pop(true);
            });
      });
}
