import 'package:flutter/material.dart';
import 'package:untitled/style.dart';

class DayTime extends StatelessWidget {
  const DayTime({
    super.key, required this.dayName,
  });

  final String dayName;
  final String startEndTime = '09:00 AM - 10:00 PM';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dayName,
          style: subTitle2(),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 345,
              height: 43,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: ShapeDecoration(
                color: const Color(0xFFE3EDFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE3EDFF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  startEndTime,
                  style: subTitle2(),
                ),
              ),
            )],
        ),
      ],
    );
  }
}