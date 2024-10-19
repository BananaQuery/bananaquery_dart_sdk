import 'package:flutter/material.dart';

class BodStatsCard extends StatelessWidget {
  const BodStatsCard({
    super.key,
    required this.subtitle,
    required this.units,
    this.value,
    this.child,
    this.onTap,
    this.color = const Color(0xFFCECDCF),
  }) : assert(value != null || child != null);

  final String? value;
  final Widget? child;
  final String subtitle;
  final String units;
  final GestureTapCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Card(
        color: color,
        elevation: 0.0,
        borderOnForeground: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: InkWell(
          onTap: onTap,
          hoverColor: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: child ??
                        RichText(
                          maxLines: 2,
                          text: TextSpan(
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                            children: <TextSpan>[
                              TextSpan(
                                text: value,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 28.0),
                              ),
                              TextSpan(
                                  text: " $units", // emoji characters
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontSize: 24)),
                            ],
                          ),
                        ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(subtitle,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
