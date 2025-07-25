import 'package:admin_ecom/theme/global_font.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final text;

  const MyTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 95,
      child: TimelineTile(
        alignment: TimelineAlign.start,
        axis: TimelineAxis.horizontal,
        isFirst: isFirst,
        isLast: isLast,
        // decorate lines
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.green : Colors.green.shade100,
        ),
        // decorate circle
        indicatorStyle: IndicatorStyle(
          width: 24,
          height: 24,
          color: isPast ? Colors.green : Colors.green.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.green.shade100,
          ),
        ),
        // Texts
        endChild: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            text,
            style: AppFonts.Medium14(
              isPast ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}



