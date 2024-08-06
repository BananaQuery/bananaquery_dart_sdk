import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPreview extends StatefulWidget {
  const WidgetPreview({super.key, required this.widget, this.code });

  final Widget widget;
  final String? code;

  @override
  State<StatefulWidget> createState() {
    return WidgetPreviewState();
  }
}

class WidgetPreviewState extends State<WidgetPreview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const TabBar(tabs: [
                Tab(text: 'Preview'),
                Tab(text: 'Code'),
              ]),
              const Padding(padding: EdgeInsets.only(top: 30)),
              Expanded(
                child: TabBarView(
                  children: [
                    widget.widget,
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.code ?? ''),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        )
    );
  }
}